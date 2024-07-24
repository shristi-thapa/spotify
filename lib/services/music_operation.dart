import 'package:sootify/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
        'toofan',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNStKDCraPB4YgpSD1H43qRBDKaYu1Z1pO0w&s',
        'dekh toofan hai ',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/9f/50/9d/9f509dab-4fc8-e761-21fd-63ee6d7948b0/mzaf_15478495451126525488.plus.aac.p.m4a',
      ),
      Music(
        'Gully Boy',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmBz8cXsKRG8qtCgk07Hr2pHqcqwEvrl0C6w&s',
        'apan Time aayega',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/9f/50/9d/9f509dab-4fc8-e761-21fd-63ee6d7948b0/mzaf_15478495451126525488.plus.aac.p.m4a',
      ),
      Music(
        'Bajiraon Mastani',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2iLJFhmuAnIK7UBMr0GcoAhll1Q3Uy0LOtg&s',
        'msatani',
        'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/08/72/da/0872dae4-87f7-75c0-00e4-4c3f21d70916/mzaf_14658824181587927685.plus.aac.p.m4a',
      ),
      Music(
          'ye dil muskhil',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2iLJFhmuAnIK7UBMr0GcoAhll1Q3Uy0LOtg&s',
          'muskhi',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/0e/d5/52/0ed55222-e6ae-1e7f-24c1-284da449af4e/mzaf_169448091425248968.plus.aac.p.m4a'),
    ];
  }
}
