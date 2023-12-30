import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  GoogleMapController? mapController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Адрес",
          style: FooterFonts.s32w500.copyWith(color: Colors.white),
        ),
        Text(
          "Кыргызстан, Бишкек, ул. Примерная 123",
          style: FooterFonts.s20w400.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: 380,
          height: 380,
          decoration: const BoxDecoration(color: Colors.white),
          // child: const MapContainer(),
        )
      ],
    );
  }
}

class MapContainer extends StatelessWidget {
  const MapContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          Future.delayed(const Duration(seconds: 1)), // Delay for demonstration
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading map'));
        } else {
          return const Center(
            child: SizedBox(
              width: 380,
              height: 380,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.7749, -122.4194),
                  zoom: 12.0,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
