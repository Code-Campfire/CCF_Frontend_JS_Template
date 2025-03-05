# Code CampFire Frontend JS Template

This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

**These are the recommended environment tools to use for this project. Other tools can be used, but less community support may be available for them.**

## Tools used

- Next.js
- Tailwind CSS
- ESLint
- Prettier
- Husky
- pnpm
- nvm

## pnpm installation using corepack

If you are using `pnpm` as your package manager, you can use `corepack` to manage the version of `pnpm` used in this project. To install `pnpm` using `corepack`, run the following command:

```bash
corepack enable
```

This will enable `corepack` and install the version of `pnpm` specified in the `package.json` file.

## nvm installation

To use `nvm` to manage the version of Node.js used in this project, you can follow these steps:

1. Run the following command to install `nvm`:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

2. Once `nvm` is installed, you can use it to install the version of Node.js specified in the `.nvmrc` file by running the following command:

```bash
nvm install
```

3. After the installation is complete, you can use the version of Node.js specified in the `.nvmrc` file by running the following command:

```bash
nvm use
```

4. You can verify that you are using the correct version of Node.js by running the following command:

```bash
node -v
```

This should output the version of Node.js specified in the `.nvmrc` file.
