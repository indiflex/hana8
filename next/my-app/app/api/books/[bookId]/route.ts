import { type NextRequest, NextResponse } from 'next/server';
import { errorResponse, HttpError } from '@/lib/errors';
import { type Book, books } from '../bookdata';

type Params = {
  params: Promise<{ bookId: string }>;
};

type ReturnBookOrIndex<T extends boolean = false> = T extends true
  ? number
  : Book;

const getBook = async <T extends boolean = false>(
  { params }: Params,
  isIndex?: T,
) => {
  const { bookId } = await params;
  const fn = isIndex ? books.findIndex : books.find;
  const book = fn.bind(books)((book) => book.id === +bookId);

  if (book === -1 || book === undefined)
    throw new HttpError(`Not found book (id: #${bookId})`, 404);

  return book as ReturnBookOrIndex<T>;
};

export async function PATCH(req: NextRequest, { params }: Params) {
  try {
    const book = await getBook({ params });
    const { title, writer } = await req.json();
    book.title = title;
    book.writer = writer;

    return NextResponse.json(book);
  } catch (err) {
    return errorResponse(err);
  }
}

export async function DELETE(_req: NextRequest, { params }: Params) {
  try {
    const bookIdx = await getBook({ params }, true);
    console.log('🚀 ~ bookIdx:', bookIdx);

    return NextResponse.json(books.splice(bookIdx, 1));
  } catch (err) {
    return errorResponse(err);
  }
}

export async function GET(_req: Request, { params }: Params) {
  try {
    console.log('*****', process.env.DB_PASSWD);
    console.log('*****', process.env);
    const book = await getBook({ params });

    return NextResponse.json(book);
  } catch (err) {
    return errorResponse(err);
  }
}
