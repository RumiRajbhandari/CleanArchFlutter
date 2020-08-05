
import 'package:clean_arch_flutter_demo/utils/response_state.dart';

class Response<ResultType> {
  ResponseState state;
  ResultType data;
  String exception;

  Response({this.state, this.data, this.exception});

  static Response<ResultType> loading<ResultType>() {
    return Response(state: ResponseState.LOADING);
  }

  static Response<ResultType> complete<ResultType>(ResultType data) {
    return Response(state: ResponseState.COMPLETE, data: data);
  }

  static Response<ResultType> error<ResultType>(String exception) {
    return Response(state: ResponseState.ERROR, exception: exception);
  }
}
