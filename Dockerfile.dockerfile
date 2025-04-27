# نستخدم صورة رسمية لـ PHP مع Apache
FROM php:8.1-apache

# نثبت امتداد mysqli للتعامل مع MySQL
RUN docker-php-ext-install mysqli

# نفتح صلاحية Apache mod_rewrite لو احتجناه لاحقًا
RUN a2enmod rewrite

# ننسخ كل ملفات المشروع إلى مجلد السيرفر الافتراضي
COPY . /var/www/html/

# فتح البورت 80 (الافتراضي للسيرفرات)
EXPOSE 80
