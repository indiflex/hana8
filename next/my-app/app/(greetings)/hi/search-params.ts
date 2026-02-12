'only server';

import type { Route } from 'next';
import { type Options, useQueryStates } from 'nuqs';
import {
  type CreateSerializerOptions,
  createLoader,
  createSerializer,
  type ParserMap,
  parseAsInteger,
  parseAsString,
  type UrlKeys,
} from 'nuqs/server';

const searchParamsParser = {
  query: parseAsString.withDefault(''),
  year: parseAsInteger,
};

const urlKeys: UrlKeys<typeof searchParamsParser> = {
  query: 'q',
  year: 'y',
};

export const loadSearchParams = createLoader(searchParamsParser, { urlKeys });

export function createTypedLink<Parsers extends ParserMap>(
  route: Route,
  parsers: Parsers,
  options: CreateSerializerOptions<Parsers> = {},
) {
  const serialize = createSerializer<Parsers, Route, Route>(parsers, options);
  return serialize.bind(null, route);
}

export const createTypedLinkSimpleVer = (
  route: Route,
  parsers: ParserMap,
  options: CreateSerializerOptions<ParserMap> = {},
) => {
  const serialize = createSerializer<ParserMap, Route, Route>(parsers, options);
  return serialize.bind(null, route);
};

// usage: createHiLinks({query: 'xx', year: 2026})
export const createHiLinks = createTypedLinkSimpleVer(
  '/hi',
  searchParamsParser,
  {
    urlKeys,
  },
);

export const useQueryAndYear = (options: Options = {}) =>
  useQueryStates(searchParamsParser, {
    ...options,
    urlKeys,
    shallow: false,
  });

//----
export const loadNuqs = (parsers: ParserMap, options: Options = {}) => ({
  loadSearchParams: createLoader(parsers),
  useQueryParams: useQueryStates(parsers, { shallow: false, ...options }),
  createLinks: (route: Route) => createTypedLink(route, parsers),
});
