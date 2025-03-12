# Comprehensive Tech Stack for AI-Assisted Development on Google Cloud

This document outlines a comprehensive and consistent tech stack optimized for AI-assisted development using Claude 3.7 on the Google Cloud Platform.

## Frontend

| Technology | Choice | Version | Reasoning |
|------------|--------|---------|-----------|
| **Framework** | Next.js | 14.2.0 | - Excellent Claude 3.7 support for generating code<br>- Server-side rendering capabilities<br>- Enhanced performance and SEO<br>- Built-in API routes<br>- Strong TypeScript integration |
| **Language** | TypeScript | 5.4.2 | - Type safety reduces errors<br>- Improved code completion and documentation<br>- Consistent with backend for knowledge sharing<br>- Better AI code generation with explicit types |
| **Styling** | Tailwind CSS | 3.4.1 | - Utility-first approach works well with AI generation<br>- Minimal context switching in JSX<br>- Consistent design system<br>- Excellent performance |
| **Component Libraries** | Shadcn/UI + HeroUI Pro | shadcn/ui: latest components<br>HeroUI Pro: 2.0.0 | - Shadcn/UI: Unstyled components for customization<br>- HeroUI Pro: Premium pre-built components<br>- Both integrate well with Tailwind<br>- Mix and match as needed for project requirements |
| **State Management** | - Zustand<br>- React Query<br>- React Context | - Zustand: 4.5.0<br>- TanStack Query: 5.28.0<br>- Context API: Built into React | - **Zustand**: Simple API, minimal boilerplate<br>- **React Query**: Data fetching, caching, and server state<br>- **Context API**: Component-level state sharing<br>- All have strong TypeScript support |
| **Form Management** | React Hook Form + Zod | - React Hook Form: 7.51.0<br>- Zod: 3.22.4 | - Performance-focused with minimal re-renders<br>- Zod provides type-safe validation<br>- Consistent validation with backend<br>- Straightforward API for Claude to implement |
| **Animation** | Framer Motion | 11.1.0 | - Declarative animations<br>- Simple API for basic transitions<br>- Advanced capabilities when needed<br>- Strong TypeScript support |
| **Testing** | Vitest + React Testing Library | - Vitest: 1.3.1<br>- RTL: 14.2.1 | - Faster than Jest<br>- Native TypeScript support<br>- Compatible with React Testing Library<br>- Simple configuration |

## Backend

| Technology | Choice | Version | Reasoning |
|------------|--------|---------|-----------|
| **Runtime** | Node.js | 20.11.1 LTS | - JavaScript/TypeScript consistency with frontend<br>- Extensive package ecosystem<br>- Excellent Google Cloud support<br>- Strong Claude knowledge for code generation |
| **Framework** | Fastify | 4.26.2 | - Better performance than Express<br>- Built-in schema validation<br>- First-class TypeScript support<br>- Modern plugin architecture<br>- Lower overhead for serverless deployments |
| **Language** | TypeScript | 5.4.2 | - Type safety across the stack<br>- Consistent with frontend<br>- Better AI code generation with types<br>- Improved maintainability |
| **API Documentation** | OpenAPI/Swagger | @fastify/swagger: 8.13.0 | - Generated from TypeScript types<br>- Interactive documentation<br>- Client code generation capabilities<br>- Industry standard |
| **Validation** | Zod | 3.22.4 | - Consistent with frontend validation<br>- Runtime type checking<br>- TypeScript type inference<br>- Simple syntax for Claude to generate |
| **Authentication** | Firebase Auth + JWT | - firebase-admin: 12.0.0<br>- jsonwebtoken: 9.0.2 | - Google Cloud native integration<br>- Extensive identity provider support<br>- Simple implementation<br>- Scales well across projects |
| **Testing** | Vitest | 1.3.1 | - Consistent with frontend testing<br>- Fast execution<br>- TypeScript support<br>- Modern API |

## Database

| Technology | Choice | Version | Reasoning |
|------------|--------|-----------|
| **NoSQL** | Firestore | firebase-admin: 12.0.0 | - Google Cloud native<br>- Real-time capabilities<br>- Scales automatically<br>- Works well with Firebase Auth<br>- Simple client libraries |
| **Relational** | Cloud SQL (PostgreSQL) / Supabase | - PostgreSQL: 16.2<br>- @supabase/supabase-js: 2.40.0 | - **Cloud SQL**: Google Cloud managed PostgreSQL<br>- **Supabase**: Postgres with built-in auth, RLS, and real-time subscriptions<br>- Choose based on project requirements<br>- Both provide robust relational capabilities |
| **ORM** | Prisma | 5.10.2 | - Type-safe database access<br>- Auto-generated migrations<br>- Works well with PostgreSQL (both Cloud SQL and Supabase)<br>- Excellent developer experience |
| **Caching** | Redis (via Memorystore) | ioredis: 5.3.2 | - In-memory performance<br>- Google Cloud managed offering<br>- Simple API<br>- Common caching patterns |

## Authentication

| Technology | Choice | Version | Reasoning |
|------------|--------|---------|-----------|
| **Primary Auth** | Firebase Auth / Supabase Auth | - firebase-admin: 12.0.0<br>- @supabase/supabase-js: 2.40.0 | - **Firebase Auth**: Google Cloud native integration<br>- **Supabase Auth**: PostgreSQL-native with row-level security<br>- Both provide extensive identity provider support<br>- Choose based on database selection |
| **Token Management** | JWT | jsonwebtoken: 9.0.2 | - Works well with both auth systems<br>- Stateless authentication<br>- Simple implementation<br>- Industry standard |

## Infrastructure

| Technology | Choice | Version | Reasoning |
|------------|--------|---------|-----------|
| **Containerization** | Docker | - Docker Engine: 24.0.7<br>- docker-compose: 2.24.6 | - Industry standard<br>- Consistent environments<br>- Required for Cloud Run<br>- Simple configuration |
| **Deployment** | - Cloud Run<br>- Cloud Functions<br>- Firebase Hosting | - Latest GCP services<br>- firebase-tools: 13.4.1 | - **Cloud Run**: For containerized applications<br>- **Cloud Functions**: For serverless workloads<br>- **Firebase Hosting**: For static assets and SPAs<br>- All integrate well with Google Cloud |
| **CI/CD** | Google Cloud Build | Latest GCP service | - Native GCP integration<br>- Built-in triggers<br>- Containerized builds<br>- Credit-efficient |
| **Monitoring** | Google Cloud Monitoring + Logging | Latest GCP services | - Native integration<br>- Comprehensive metrics<br>- Alerting capabilities<br>- Dashboard customization |
| **Secret Management** | Google Secret Manager | Latest GCP service | - Secure storage for sensitive information<br>- IAM integration<br>- Versioning support<br>- Audit logging |

## Development Tools

| Technology | Choice | Version | Reasoning |
|------------|--------|---------|-----------|
| **Package Manager** | pnpm | 8.15.4 | - Faster than npm<br>- Disk space efficient<br>- Workspaces support<br>- Compatible with existing npm ecosystem |
| **Monorepo Management** | Turborepo | 2.1.0 | - Fast, incremental builds<br>- Task caching<br>- Simple configuration<br>- Works well with pnpm |
| **Linting/Formatting** | ESLint + Prettier | - ESLint: 8.57.0<br>- Prettier: 3.2.5 | - Industry standard tools<br>- Extensive rule sets<br>- IDE integration<br>- Consistent code style |
| **Environment Variables** | dotenv + type-safety | - dotenv: 16.4.5<br>- zod-config: 1.1.4 | - Simple configuration<br>- Type-safe access<br>- Works across environments<br>- Prevents runtime errors |
| **Git Hooks** | Husky + lint-staged | - husky: 9.0.11<br>- lint-staged: 15.2.2 | - Automated code quality checks<br>- Prevents bad commits<br>- Simple configuration<br>- Enforces standards |

## Project Structure

A standard project structure that works well with this tech stack:

```
project/
├── apps/
│   ├── web/                  # Next.js frontend application
│   │   ├── public/           # Static assets
│   │   ├── src/
│   │   │   ├── app/          # Next.js App Router
│   │   │   ├── components/   # React components
│   │   │   ├── lib/          # Utility functions
│   │   │   ├── hooks/        # Custom React hooks
│   │   │   └── styles/       # Global styles
│   │   ├── .env              # Environment variables
│   │   └── package.json
│   │
│   └── api/                  # Fastify backend application
│       ├── src/
│       │   ├── routes/       # API endpoints
│       │   ├── services/     # Business logic
│       │   ├── models/       # Data models
│       │   ├── utils/        # Utility functions
│       │   └── plugins/      # Fastify plugins
│       ├── .env
│       └── package.json
│
├── packages/                 # Shared code between applications
│   ├── ui/                   # Shared UI components
│   │   ├── src/
│   │   └── package.json
│   ├── validation/           # Shared Zod schemas
│   │   ├── src/
│   │   └── package.json
│   └── config/               # Shared configuration
│       ├── src/
│       └── package.json
│
├── infrastructure/           # Infrastructure as Code
│   ├── terraform/            # Terraform configurations
│   └── scripts/              # Deployment scripts
│
├── turbo.json                # Turborepo configuration
├── pnpm-workspace.yaml       # pnpm workspace configuration
└── package.json              # Root package.json
```

### Reasoning for this Structure:

1. **Separation of Concerns**: Frontend (web) and backend (api) are separate applications but can share code through the packages directory.

2. **Code Sharing**: Common code like UI components, validation schemas, and configuration is extracted into shared packages.

3. **Monorepo Benefits**: Using Turborepo and pnpm workspaces allows for:
   - Single repository for all code
   - Shared dependencies
   - Simplified CI/CD
   - Atomic commits across packages

4. **Scalability**: This structure scales well as you add more projects:
   - Add new applications to the apps directory
   - Extract more shared code into packages
   - Keep infrastructure configuration centralized

5. **Clear Organization**: New developers (or AI assistants) can quickly understand where code should be placed and how it relates to other parts of the system.

6. **Consistency**: Following this structure across projects creates familiarity and reduces cognitive load when switching between them.

## Benefits for AI-Assisted Development

This tech stack was specifically chosen to optimize working with Claude 3.7:

1. **TypeScript Throughout**: Provides explicit types that guide AI code generation, reducing errors and improving quality.

2. **Modern, Popular Libraries**: Claude has strong knowledge of React, Next.js, and other mainstream technologies.

3. **Consistent Patterns**: Using the same patterns across projects allows the AI to apply learnings from one project to another.

4. **Declarative Approaches**: Libraries like Tailwind CSS, React Query, and Zod use declarative patterns that are easier for AI to generate correctly.

5. **Strong Community Support**: All chosen technologies have extensive documentation and examples that Claude can reference.

6. **Google Cloud Native**: Leverages your $25,000 in credits while providing a comprehensive, managed infrastructure.

7. **Type Safety**: Reduces runtime errors by catching issues during development, especially important when code is AI-generated.

8. **Minimal Boilerplate**: Selected libraries favor minimal configuration and boilerplate, focusing on business logic.

## Model Control Protocols (MCPs)

| Protocol | Version | Purpose | Integration |
|----------|---------|---------|------------|
| **browser-tools-mcp** | Latest stable | - Web browsing and interaction<br>- DOM manipulation<br>- Form filling and submission<br>- Screenshot capture | - Use with Claude 3.7 to automate web tasks<br>- Integrate in development workflow for testing<br>- Automate repetitive browser interactions |
| **file-search-mcp** | Latest stable | - Search through project files<br>- Find code patterns<br>- Locate documentation | - Help Claude navigate larger codebases<br>- Find relevant code examples<br>- Assist with refactoring tasks |
| **code-interpreter-mcp** | Latest stable | - Execute and analyze code<br>- Process data<br>- Generate visualizations | - Prototype algorithms<br>- Analyze development metrics<br>- Test code snippets before integration |

### Benefits of MCP Integration

1. **Enhanced AI Capabilities**: MCPs extend Claude 3.7's abilities beyond conversation to include direct interaction with your development environment.

2. **Workflow Automation**: Automate repetitive tasks in the development process, from testing to deployment.

3. **Reduced Context Switching**: Allow Claude to access necessary information without requiring you to manually provide it.

4. **Better Code Understanding**: MCPs like file-search help Claude understand larger project contexts and existing code patterns.

5. **Development Assistance**: Use browser-tools-mcp to help with tasks like component testing, form validation, and UI interactions.

### Implementation Strategy

1. **Start with browser-tools-mcp** as your primary protocol, focusing on web interaction tasks.

2. **Gradually introduce additional MCPs** as your projects grow in complexity.

3. **Create standardized prompts** for common MCP operations to maintain consistency across projects.

4. **Document MCP usage patterns** that work well with your specific tech stack.

5. **Integrate MCPs with your CI/CD pipeline** where appropriate for testing and verification.
