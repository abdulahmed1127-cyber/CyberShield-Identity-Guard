import 'package:flutter/material.dart';

void main() => runApp(const IdentityGuardApp());

class IdentityGuardApp extends StatelessWidget {
  const IdentityGuardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberShield Identity Guard',
      theme: ThemeData(primarySwatch: Colors.blue, scaffoldBackgroundColor: const Color(0xFF001F3F)),
      home: const DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int riskScore = 65;
  bool twoFA = false;
  bool passwordChanged = false;
  String status = 'At Risk - Tap Scan Now';

  void scanNow() {
    setState(() => status = 'Scanning breaches... Checking face... Checking logins...');
    Future.delayed(const Duration(seconds: 2), () {
      setState(() => status = 'Scan complete: 2 breaches, 1 fake profile found');
    });
  }

  void resolveAlert(int points) {
    setState(() {
      riskScore = (riskScore - points).clamp(0, 100);
      status = 'Alert resolved - Risk now $riskScore';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CyberShield Identity Guard')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(radius: 60, child: Text('$riskScore', style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
            const SizedBox(height: 8),
            Text(status, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: scanNow, child: const Text('Scan Now')),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () { setState(() { passwordChanged = true; riskScore = (riskScore - 20).clamp(0, 100); status = 'Password updated - Risk -20'; }); },
              child: Text(passwordChanged ? 'Done ✓' : 'Change Password'),
            ),
            const SizedBox(height: 12),
            SwitchListTile(
              title: const Text('Turn on 2FA', style: TextStyle(color: Colors.white)),
              value: twoFA,
              onChanged: (v) => setState(() { twoFA = v; if (v) { riskScore = (riskScore - 10).clamp(0, 100); status = '2FA Enabled - Risk -10'; } }),
            ),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () => resolveAlert(20), child: const Text('Resolve Alert - Fake Profile')),
          ],
        ),
      ),
    );
  }
}