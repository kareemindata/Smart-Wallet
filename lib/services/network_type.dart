import 'package:smartwallet/services/restclient.dart';

abstract class NetworkType {
  RestClient rest;
  NetworkType(this.rest);
}
