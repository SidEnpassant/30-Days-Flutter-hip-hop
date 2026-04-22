import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:testapp/bloc_state_management/image_picker/bloc/image_picker_event.dart';
import 'package:testapp/bloc_state_management/image_picker/bloc/image_picker_state.dart';
import 'package:testapp/bloc_state_management/image_picker/utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent , ImagePickerStates>{

  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils):super(ImagePickerStates()){
    on<CameraCapture>(cameraCapture);
  }


  void cameraCapture(CameraCapture event , Emitter<ImagePickerStates> states)async{
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }

  void galleryImagePicker(CameraCapture event , Emitter<ImagePickerStates> states)async{
    XFile? file = await imagePickerUtils.pickImageFromGallery();
    emit(state.copyWith(file: file));
  }
}