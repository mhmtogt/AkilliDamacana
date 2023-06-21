
import 'package:change_notifier/change_notifier.dart';


class ImageProvider extends ChangeNotifier {
 String selectedImagePath = '';


  void setSelectedImagePath(String imagePath) {
    selectedImagePath = imagePath;
    notifyListeners();
  }

   void selectImage(ImageProvider imageProvider) {
    // Yapılacak işlemler
  }
}
