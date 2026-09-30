---
status: unknown
projects: [billboard]
claims: [D4]
created: 2026-09-30
last_reviewed: 2026-09-30
tags: [flashcards]
---

# Precision and recall

## In my own words
> precision و recall این دوتا رو اصلا نمیدونم. توی ماشین لرنینگ هم هست. ولی بلد نیستم
>
> recal=50% , precision=60%

## Correction
- recall درست بود (۵ از ۱۰). precision اشتباه بود: ۵ از ۶ یعنی حدود ۸۳٪، نه ۶۰٪. مخرج precision **حرف‌های مدل** است (۶ تا)، نه کلید تصحیح (۱۰ تا).
- تفسیر جا افتاده بود: precision بالا و recall پایین یعنی مدل کم پیش میاد چیز غلط بگه، ولی نصف چیزها رو جا میندازه.

## Simple version
تور ماهیگیری. precision یعنی از چیزهایی که توی تور اومده، چند درصدش ماهیه. recall یعنی از همه‌ی ماهی‌های دریاچه، چند درصدش رو گرفتی. برای به خاطر سپردن: precision از «حرف‌های مدل» حساب میشه، recall از «واقعیت».

## Technical version
- `precision = TP / (TP + FP)` و `recall = TP / (TP + FN)`.
- معادل‌هاشون توی آمار: recall همون sensitivity (TPR) است و precision همون PPV.
- بینشون trade-off هست. threshold رو بالا ببری، مدل کمتر چیز میگه و precision بالا میره ولی recall پایین میاد. F1 میانگین همساز این دو تاست.
- کلید تصحیح ناقص tagهای درست مدل رو FP حساب می‌کنه و precision رو الکی پایین میاره. توی cs1 با همون خروجی، precision با کلید ناقص ۴۳٪ بود و با کلید کامل ۱۰۰٪.
- برای ادعای D4 (precision بالای ۹۵٪ برای کیف رهاشده) مصاحبه‌کننده احتمالاً می‌پرسه چرا precision مهم‌تر بوده (هزینه‌ی هشدار اشتباه) و recall چقدر بوده. ← [[calibration]]، [[inter-rater-agreement]]

## Where I used it
- [[Sessions/2026-09-29-billboard-profiler]]: tagهای المان‌ها روی cs1 و کلید تصحیح ناقص

## Exercise (no AI)
توی یه فایل Python خالی تابع `precision_recall(pred, truth)` رو با `set` بنویس. روی مثال cs1 امتحانش کن: یه بار با کلید کامل و یه بار با کلید ناقص (۷ tag). بعد توی یه خط توضیح بده چرا precision عوض شد ولی خروجی مدل عوض نشد.

## Flashcards
precision چیه؟::از چیزهایی که مدل گفته، چند درصدش درسته؟ TP / (TP + FP)
recall چیه؟::از چیزهایی که واقعاً وجود داره، مدل چند درصدش رو پیدا کرده؟ TP / (TP + FN)
کلید تصحیح ناقص روی کدوم اثر می‌ذاره؟::روی precision. tagهای درستی که توی کلید نیستن FP حساب میشن و precision الکی پایین میاد.
