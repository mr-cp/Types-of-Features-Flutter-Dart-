import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final String url = 'http://vimeo.com/channels/vimeogirls/670192';

  @override
  Widget build(BuildContext context) {
    String videoId = extractVimeoVideoId(url);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Validation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                print(extractVimeoVideoId(url));
              },
              child: const Text('VALIDATE'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(videoId)
        ],
      ),
    );
  }
}

// function to check url matches:
bool validateVimeoURL(String url) {
  RegExp regex =
      RegExp(r"^(http:\/\/|https:\/\/)?(www\.)?(vimeo\.com\/)([0-9]+)$");
  return regex.hasMatch(url);
}

// function to extract video Id:
String extractVimeoVideoId(String url) {
  try {
    Uri uri = Uri.parse(url);

    if (uri.host == 'vimeo.com' || uri.host == 'player.vimeo.com') {
      // Extract video ID from the last path segment
      String videoId = uri.pathSegments.last;
      return videoId;
    }
  } catch (e) {
    // Handle parsing errors
    print('Error parsing URL: $url');
  }

  return '';
}
