FROM directus/directus:11.4.1

USER root
RUN corepack enable && corepack prepare pnpm@7.33.0 --activate
USER node
RUN pnpm install directus-extension-sync@latest
