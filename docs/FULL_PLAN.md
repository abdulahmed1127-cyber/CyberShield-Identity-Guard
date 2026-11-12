# CyberShield Identity Guard — Full Plan

## Summary
Detect Early. Act Fast. Stay Safe. An app that detects identity theft before it ruins you.

## Detection Engine — 4 Layers
1. Breach: Email/phone hash -> Breach API -> If found, +20 risk
2. Document/Face: Face match <70% = mismatch +25, OCR mismatch +25
3. Behaviour: New device + new location + odd hour = +30, User says Not Me = +40
4. Social: Fake profile confirmed = +35, Duplicate photo = +20

## Risk Score
Email breach +20, Weak password +15, Fake profile +35, Login Not Me +40, SIM swap +30, ID mismatch +25, No 2FA +10, ID photo shared +10
Example: Aisha — Email leaked (+20) + No 2FA (+10) + Fake FB (+35) = 65 Yellow. After fix -> 15 Green.

## Vault Security
NEVER store full NIN/BVN. Only last-4 + SHA-256 hash. AES-256 on-device, Android Keystore, Biometric unlock, Delete in 1 tap.

## Nigeria Flows
- Check NIN linked numbers: Dial *346#
- SIM Swap: Sudden No Service -> Call network, freeze bank, change WhatsApp PIN
- WhatsApp: Settings -> Linked Devices -> Log out unknown
- Loan Fraud: Report to FCCPC / lender

## Roadmap
Week 1 Foundation, Week 2 Detection, Week 3 Response, Week 4 Hardening, Week 5 Beta 50 users Abuja, Week 6 Launch

## Business
Free: Breach, Risk Score, Learn. Pro N1,500/mo: Unlimited, Family, Evidence Pack. Institutional N200/check.
Never sell data.