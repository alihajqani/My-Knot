---
date: 2026-09-29
project: billboard
repo: billboard-profiler
commits: none (design session, no code)
---

# 2026-09-29 — billboard

## What was built
Stage 1 شروع شد: طراحی schema profile با پرسش و پاسخ (سؤال ۱ تا ۱۸)، بدون کد. وسط کار پیام مشتری و ۲۳ نمونه رسید: پوستر فرهنگی شهرداری روی صفحه‌ی کتاب، و سؤال مشتری امکان‌سنجیه. کار روی سؤال ۱۸ (قانون tag زدن المان‌ها روی cs1) متوقف شد.

## Decisions and why
- دامنه: متن، رنگ، tag المان‌ها، پیام/مناسبت. چون مشتری همین‌ها رو خواسته. جانمایی، افکت و مخاطب کنار رفتن.
- متن verbatim + نقش + سبک + زبان. چون verify بدون قانون ممکن نیست. گزینه‌ی رد شده: متن normalize‌شده.
- confidence با دسته‌ی ثابت و از توافق دو خوانش. چون عدد مدل calibrated نیست. گزینه‌ی رد شده: عدد ۰ تا ۱.
- رنگ = hex + اسم پایه (۱۱ رنگ) + درصد. گزینه‌ی رد شده: free text.
- واحد profile پوستره، نه فایل.

## Concepts touched
- [[operational-definition]], [[reliability-vs-validity]], [[inter-rater-agreement]], [[raw-vs-derived]], [[calibration]], [[precision-recall]], [[data-leakage]] — new

## Mistakes
- [[Mistakes/assumed-commercial-billboards]]

## Next exercise
- شبیه‌سازی threshold توی [[calibration]] (۴۰ مورد با ۰٫۹)، چون این مفهوم دو بار اشتباه شد.
