import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';


class Classifier {
  late File imageFile;
  late List outputs;

  Future<List?> getDisease(ImageSource imageSource) async {


    //var image = await ImagePicker().pickImage(source: imageSource);
    var image = await ImagePicker().pickImage(source: imageSource);
    imageFile = File(image!.path);  //imageFile = File(image!.path);
    await loadModel();
    var result = await classifyImage(imageFile);
    Tflite.close();
    return result;
    
   
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model/modelo-google.tflite",   //model2 es modelo de jupiter
      labels: "assets/model/labels.txt",
      numThreads: 1,
    );

  }

  Future<List?> classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        //imageMean: 127.5,
        //imageStd: 127.5,
        numResults: 2,
        threshold: 0.3,
        //threshold: 0.5,
        asynch: true);
        
    return output;

    
  }
}
