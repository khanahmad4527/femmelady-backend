# 🛍️ Multilingual E-commerce Directus

A fully featured multilingual e-commerce platform leveraging Directus for content management, Bunny CDN for optimized media delivery. The app supports robust filtering, user authentication with anti-abuse mechanisms, and dynamic localization across 7 languages.

## 🌟 Key Features

- Supports 7 languages: English, Dutch, French, Arabic, Japanese, Korean, and Chinese.
- Directus, Redis, Bunny CDN, Brevo, and deployed on Google Cloud VM.
- Authentication supports plus Google login.
- Product page offers advanced filtering, sorting, and pagination.
- Admin dashboard built on Directus with robust RBAC and PBAC roles and policies.
- Images are hosted on Cloudflare R2.
- Images are delivered via Bunny CDN for faster global performance.
- **Structured Localization**: Localized content is managed across all collections using Directus’ native i18n capabilities for consistent multilingual support.
- **Media Translation Support**: Media assets are linked to their respective translations, ensuring language-specific content delivery across all platforms.
- **Relational Data Modeling**: Clean and scalable architecture designed using Directus’ relational capabilities — including many-to-many, one-to-many, and many-to-one relationships — enabling normalized, future-proof data structures.

## Headless CMS & Content Management

- Powered by **Directus**, enabling SQL-first headless content management with full access to underlying schema.
- Custom roles and permissions implemented using Directus RBAC and PBAC for granular access control.
- Structured localization support through Directus i18n fields across all major content collections.
- Media translation support allows language-specific image and video associations within the CMS.
- **Singleton collections** are used for managing static content such as Contact Us, About, Terms, and Privacy Policy pages.
- These singleton contents are **cached** for performance but are also **instantly updatable** — changes in Directus are reflected in real time on the frontend.
- Collections are visually enhanced in the Directus admin panel using custom **colors** and **icons** for faster identification and better UX.

## Backend Architecture & Data Modeling

- Relational data architecture built using Directus-native one-to-many, many-to-one, and many-to-many relationships.
- Normalized schema design ensures scalable, maintainable backend logic with clean data separation.
- Custom Directus flows automate processes such as sending notifications, syncing content, and external API interactions.
- Directus webhooks enable real-time backend integrations with third-party services.
- Custom extensions and hooks add server-side logic for events like user creation and content moderation.

## Infrastructure & Performance

- Deployment managed via **Docker** on a dedicated **Google Cloud VM** for full infrastructure control.
- **Redis** used for caching and rate-limiting actions such as password reset requests.
- **Brevo** integrated for email workflows like verification and recovery emails.
- Media assets stored in **Cloudflare R2** and delivered globally via **Bunny CDN**.

---

## 🖼️ Feature Image

![Feature Image](https://res.cloudinary.com/dalqx198y/image/upload/v1746362506/femmelady-directus/Screenshot_2025-05-04_174431_p5su50.png)

---

## 💻 Tech Stack

<table>
  <tr>
    <td><img src="https://i.imgur.com/Eyib50Q.jpeg" height="50"/><br/>Directus</td>
    <td><img src="https://i.imgur.com/ESUFWFc.jpeg" height="50"/><br/>Docker</td>
    <td><img src="https://i.imgur.com/F9eRNHm.png" height="50"/><br/>GCP</td>
  </tr>
  <tr>
    <td><img src="https://i.imgur.com/AAO0WIM.png" height="50"/><br/>Cloudflare</td>
    <td><img src="https://res.cloudinary.com/dalqx198y/image/upload/v1746352810/images_4_gfgksj.jpg" height="50"/><br/>Bunny CDN</td>
    <td><img src="https://res.cloudinary.com/dalqx198y/image/upload/v1746352597/redis-ar21_oe5usd.png" height="50"/><br/>Redis</td>
  </tr>
  <tr>
    <td><img src="https://i.imgur.com/J159u3t.png" height="50"/><br/>TypeScript</td>
  </tr>
</table>

---

## 📸 Screenshots

# Directus Collections Overview

## All Collections with Icons  
![All collections listed in Directus with unique colors and representative icons](https://res.cloudinary.com/dalqx198y/image/upload/v1746362505/femmelady-directus/Screenshot_2025-05-04_174711_kqwieb.png)

## Brands Collection  
![Directus view of the brands collection](https://res.cloudinary.com/dalqx198y/image/upload/v1746362502/femmelady-directus/Screenshot_2025-05-04_174724_q5v2cs.png)

## Order Collection  
![Order collection structure in Directus](https://res.cloudinary.com/dalqx198y/image/upload/v1746362500/femmelady-directus/Screenshot_2025-05-04_174734_cyh0zy.png)

## Languages Collection  
![Languages collection showing supported site languages](https://res.cloudinary.com/dalqx198y/image/upload/v1746362500/femmelady-directus/Screenshot_2025-05-04_174734_cyh0zy.png)

## Review Collection  
![Customer review collection schema in Directus](https://res.cloudinary.com/dalqx198y/image/upload/v1746362500/femmelady-directus/Screenshot_2025-05-04_174734_cyh0zy.png)

## Pagination Settings  
![Pagination and listing configuration in Directus](https://res.cloudinary.com/dalqx198y/image/upload/v1746362499/femmelady-directus/Screenshot_2025-05-04_174758_qb1c5b.png)

## Cart Functionality  
![Cart and checkout-related collections in Directus](https://res.cloudinary.com/dalqx198y/image/upload/v1746362499/femmelady-directus/Screenshot_2025-05-04_174821_xvygjl.png)

## Contact Us Page  
![Singleton collection for Contact Us page](https://res.cloudinary.com/dalqx198y/image/upload/v1746362499/femmelady-directus/Screenshot_2025-05-04_174837_juce9z.png)

## About Us Page  
![Singleton collection for About Us content](https://res.cloudinary.com/dalqx198y/image/upload/v1746362499/femmelady-directus/Screenshot_2025-05-04_174848_kpg28u.png)

## All Products View  
![List view of all products in Directus](https://res.cloudinary.com/dalqx198y/image/upload/v1746362496/femmelady-directus/Screenshot_2025-05-04_175118_x3kilb.png)

## FAQ Page  
![Singleton collection for Frequently Asked Questions](https://res.cloudinary.com/dalqx198y/image/upload/v1746362496/femmelady-directus/Screenshot_2025-05-04_174902_a6a29h.png)

## Terms and Conditions  
![Terms and Conditions singleton collection](https://res.cloudinary.com/dalqx198y/image/upload/v1746362496/femmelady-directus/Screenshot_2025-05-04_174929_uddow9.png)

## Privacy Policy  
![Privacy Policy singleton collection](https://res.cloudinary.com/dalqx198y/image/upload/v1746362495/femmelady-directus/Screenshot_2025-05-04_174911_alzfgo.png)

## Product Creation Workflow

### Creating Product - 1  
![Adding a new product - 1](https://res.cloudinary.com/dalqx198y/image/upload/v1746362495/femmelady-directus/Screenshot_2025-05-04_175004_fxfedp.png)

### Creating Product - 2  
![Adding a new product - 2](https://res.cloudinary.com/dalqx198y/image/upload/v1746362495/femmelady-directus/Screenshot_2025-05-04_175017_zlwg9t.png)

### Creating Product - 3  
![Adding a new product - 3](https://res.cloudinary.com/dalqx198y/image/upload/v1746362495/femmelady-directus/Screenshot_2025-05-04_175043_uuh5zm.png)

### Creating Product - 4  
![Adding a new product - 4](https://res.cloudinary.com/dalqx198y/image/upload/v1746362494/femmelady-directus/Screenshot_2025-05-04_175025_ktjspa.png)

### Creating Product - 5  
![Adding a new product - 5](https://res.cloudinary.com/dalqx198y/image/upload/v1746362494/femmelady-directus/Screenshot_2025-05-04_175036_ivpeds.png)

## User Management

### User Collection  
![User data management collection](https://res.cloudinary.com/dalqx198y/image/upload/v1746362494/femmelady-directus/Screenshot_2025-05-04_175059_gv1vyj.png)

### User Roles  
![Role-based access configuration](https://res.cloudinary.com/dalqx198y/image/upload/v1746362494/femmelady-directus/Screenshot_2025-05-04_175157_sesizi.png)

### Access Policies  
![Access policies for securing collections](https://res.cloudinary.com/dalqx198y/image/upload/v1746362494/femmelady-directus/Screenshot_2025-05-04_175203_yvmjdd.png)

## Collection Overviews

### All Collections List - 1  
![Overview list of all Directus collections - part 1](https://res.cloudinary.com/dalqx198y/image/upload/v1746362493/femmelady-directus/Screenshot_2025-05-04_175148_r2izrh.png)

### All Collections List - 2  
![Overview list of all Directus collections - part 2](https://res.cloudinary.com/dalqx198y/image/upload/v1746362494/femmelady-directus/Screenshot_2025-05-04_175133_owore2.png)

## Security Policies

### Public Access Policies - 1  
![Detailed view of public access policies for each collection - part 1](https://res.cloudinary.com/dalqx198y/image/upload/v1746362493/femmelady-directus/Screenshot_2025-05-04_175215_yetr9q.png)

### Public Access Policies - 2  
![Detailed view of public access policies for each collection - part 2](https://res.cloudinary.com/dalqx198y/image/upload/v1746362493/femmelady-directus/Screenshot_2025-05-04_175223_qzkvod.png)

### Subscriber Role Policy  
![Role policy settings for the Subscriber role](https://res.cloudinary.com/dalqx198y/image/upload/v1746362493/femmelady-directus/Screenshot_2025-05-04_175237_v3jbiu.png)
---
