import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/events.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'https://png.pngtree.com/element_our/png/20181114/charity-flat-icon-png_238382.jpg',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(
                  'Donate Blood',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Colombo, Sri Lanka',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Blood is the most precious gift that anyone can give to another person – the gift of life. A decision....',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 500,),

        ],
      ),
    );
  }

}
