/** biome-ignore-all lint/style/useNodejsImportProtocol: 'edge runtime' */
import { compare, hash } from 'bcryptjs';
import { existsSync, mkdirSync, writeFileSync } from 'fs';
// import { writeFile } from 'fs/promises';
import path from 'path';
import z from 'zod';

export type ValidError = {
  error: Record<string, string | undefined>;
  data: Record<string, string | undefined | null>;
};

export const validate = <T extends z.ZodObject>(
  zobj: T,
  formData: FormData,
) => {
  const data = Object.fromEntries(formData.entries()) as ValidError['data'];
  const validator = zobj.safeParse(data);
  if (!validator.success) {
    const verr = z.treeifyError(validator.error).properties || {};
    const validError: ValidError = { error: {}, data };
    for (const [k, v] of Object.entries(verr)) {
      validError.error[k] = v?.errors[0];
    }
    return [validError] as const;
  }

  return [undefined, validator.data] as const;
};

export const saveProfile = async (file: File) => {
  if (file && file.size > 0) {
    const fileName = `${file.name}`;
    const uploadDir = path.join(process.cwd(), 'public/profiles');
    if (!existsSync(uploadDir)) mkdirSync(uploadDir);
    const filePath = path.join(uploadDir, fileName);
    const buffer = Buffer.from(await file.arrayBuffer());
    writeFileSync(filePath, buffer);
    return `/profile/${fileName}`;
  }
};

export const encrypt = async (plainPasswd: string) => hash(plainPasswd, 10);

export const comparePassword = async (
  plainPasswd: string,
  encPassword: string,
) => compare(plainPasswd, encPassword);
