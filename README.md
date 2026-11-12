
# CyberShield Identity Guard
### An App That Detects Identity Theft — Before It Ruins You

**Detect Early. Act Fast. Stay Safe.**

CyberShield Identity Guard detects identity theft early, explains risk in plain language, and helps you act in one tap — freeze, report, recover.

Built for Nigeria & Africa. Offline-first. Never stores full NIN/BVN.

> Part of CyberShield AI Family: CyberShield AI • Sauti Tri-Sense • RescuePIN
> Author: Abdulkadir Ahmed — FCT Abuja, Nigeria

## 🚨 Problem
Most Nigerians only discover identity theft when a loan is already taken in their name, 【entity-WhatsApp¦canonical_name=WhatsApp】 is hijacked, or bank account is emptied.
- SIM Swap
- NIN / BVN Fraud
- 【entity-WhatsApp¦canonical_name=WhatsApp】 OTP Hijack
- Fake 【entity-Facebook¦canonical_name=Facebook】 / Dating Profiles with your photo
- Loan Fraud with stolen ID + selfie

## ✅ What It Does
1. **Breach & Dark Web Monitor** — Check email/phone against breaches
2. **Document & Face Verification** — Selfie vs ID match + OCR
3. **Account & Behaviour Alerts** — New login? SIM swap? OTP you didn't request?
4. **Social Impersonation Scanner** — Fake profile using your photo
5. **Risk Score 0-100** — Green 0-30 Safe, Yellow 31-70 At Risk, Red 71-100 Likely Theft
6. **One-Tap Response** — Report to Bank / NIMC / Police, Freeze Guide, Evidence Pack PDF

## 📱 Screens
Dashboard • Vault • Scan • Alerts • Learn • Response Centre

## 🛠️ Tech Stack
- **App:** Flutter (Dart) — Android + iOS, one codebase
- **Backend:** Firebase Auth, Firestore, Cloud Functions, FCM
- **Face:** Google ML Kit Face Detection (on-device)
- **OCR:** Google ML Kit Text Recognition
- **Breach:** Have I Been Pwned API
- **PDF:** Flutter pdf package

## 🔒 Privacy — We NEVER Store Full IDs
- Only last-4 NIN/BVN + SHA-256 hash
- AES-256 on-device encryption, Android Keystore
- Biometric unlock, auto-lock 2 min
- Delete all data in 1 tap (NDPA compliant)
- We NEVER sell your data

## 📂 Repo Structure