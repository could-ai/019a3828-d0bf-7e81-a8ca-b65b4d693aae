import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HeroSection(),
            _AboutSection(),
            _FeaturesSection(),
            _HowItWorksSection(),
            _CommunitySection(),
            _FooterSection(),
          ],
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green.shade50, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/logo.png', height: 100), // Placeholder
          const SizedBox(height: 24),
          Text(
            'Halal Socialy',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Share goodness, earn rewards — the halal way.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.apple),
                label: const Text('App Store'),
                style: _buttonStyle(),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.android),
                label: const Text('Google Play'),
                style: _buttonStyle(),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.web),
                label: const Text('Web App'),
                style: _buttonStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.green.shade700,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}

class _AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: const Column(
        children: [
          _SectionTitle(title: 'About Halal Socialy'),
          SizedBox(height: 24),
          Text(
            'Halal Socialy is a modern social media platform, similar to TikTok, but exclusively for Islamic and halal video content. Our mission is to provide a safe, positive, and family-friendly environment for Muslims to share and watch beneficial short videos, free from any haram or inappropriate material.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black87, height: 1.6),
          ),
        ],
      ),
    );
  }
}

class _FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      color: Colors.green.shade50,
      child: Column(
        children: [
          const _SectionTitle(title: 'Features'),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 600;
              return Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                children: const [
                  _FeatureCard(
                    icon: Icons.video_collection,
                    title: 'Halal Videos',
                    description: 'Watch and share short, beneficial Islamic videos.',
                  ),
                  _FeatureCard(
                    icon: Icons.monetization_on,
                    title: 'Earn Coins',
                    description: 'Earn coins for following other users on the platform.',
                  ),
                  _FeatureCard(
                    icon: Icons.trending_up,
                    title: 'Promote Content',
                    description: 'Use your coins to ethically promote your content.',
                  ),
                  _FeatureCard(
                    icon: Icons.family_restroom,
                    title: 'Safe Environment',
                    description: 'A positive and family-friendly space for everyone.',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HowItWorksSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Column(
        children: [
          const _SectionTitle(title: 'How It Works'),
          const SizedBox(height: 40),
          LayoutBuilder(builder: (context, constraints) {
            bool isMobile = constraints.maxWidth < 800;
            return Flex(
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const _StepCard(
                    icon: Icons.remove_red_eye,
                    title: 'Watch & Follow',
                    description: 'Discover and follow creators.'),
                if (!isMobile)
                  const Icon(Icons.arrow_forward,
                      color: Colors.green, size: 30),
                if (isMobile)
                  const Icon(Icons.arrow_downward,
                      color: Colors.green, size: 30),
                const _StepCard(
                    icon: Icons.control_point_duplicate,
                    title: 'Earn Coins',
                    description: 'Get rewarded for each follow.'),
                if (!isMobile)
                  const Icon(Icons.arrow_forward,
                      color: Colors.green, size: 30),
                if (isMobile)
                  const Icon(Icons.arrow_downward,
                      color: Colors.green, size: 30),
                const _StepCard(
                    icon: Icons.rocket_launch,
                    title: 'Grow',
                    description: 'Use coins to gain followers.'),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class _CommunitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: Colors.green.shade700,
      child: Column(
        children: [
          Text(
            'Join thousands of Muslims sharing goodness.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.green.shade800,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              textStyle: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600),
            ),
            child: const Text('Get Started Now'),
          ),
        ],
      ),
    );
  }
}

class _FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.grey.shade200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Contact Us | Privacy Policy | Terms of Service'),
          const SizedBox(height: 16),
          Text(
            '© ${DateTime.now().year} Halal Socialy. All rights reserved.',
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// Helper Widgets
class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.green.shade800,
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Icon(icon, size: 48, color: Colors.green.shade700),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class _StepCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _StepCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: 200,
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green.shade100,
              child: Icon(icon, size: 40, color: Colors.green.shade800),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
