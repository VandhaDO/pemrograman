import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/detailscreen.dart';
import 'package:flutter_layout/list_item.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key,}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  // final List<TourismPlace> _doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Kayangan Api',
      location: 'Ngasem, Bojonegoro',
      imageAsset: 'assets/images/kya1.jpg',
      description:
      'Kayangan Api adalah “Sumber Api Abadi” yang terletak di Desa Sendangharjo, Kecamatan Ngasem, Kabupaten Bojonegoro, Jawa timur. Kayangan Api merupakan fenomena geologi berupa gas alam yang keluar dari dalam tanah melalui zona lemah (rekahan).',
      openDay: 'Open Everyday',
      openHour: 'Open 24 Hours',
      price: 'Rp 5.000',
      imgSlider1: 'assets/images/kya2.jpg',
      imgSlider2: 'assets/images/kya3.jpg',
      imgSlider3: 'assets/images/kya1.jpg',
    ),
    TourismPlace(
      name: 'Negeri Atas Angin',
      location: 'Sekar, Bojonegoro',
      imageAsset: 'assets/images/na1.jpg',
      description:
      'Atas Angin adalah sebuah lokasi di Desa Deling, Kecamatan Sekar, Kabupaten Bojonegoro, Jawa Timur, 50 km dari pusat kota. Lokasi ini menjadi favorit wisatawan karena banyaknya spot indah dari bentangan alam Bojonegoro.',
      openDay: 'Open Everyday',
      openHour: 'Open 24 Hours',
      price: 'Rp 5.000',
      imgSlider1: 'assets/images/na2.jpg',
      imgSlider2: 'assets/images/na3.jpg',
      imgSlider3: 'assets/images/na1.jpg',
    ),
    TourismPlace(
      name: 'Waduk Pacal',
      location: 'Temayang, Bojonegoro',
      imageAsset: 'assets/images/wp1.jpg',
      description:
      'Waduk Pacal adalah sebuah bangunan peninggalan Belanda yang dibangun pada tahun 1933. Berlokasi di Desa Kedungsumber, Kecamatan Temayang, tempat ini dibangun untuk mencukupi kebutuhan irigasi pertanian di wilayah sekitar hingga saat ini.',
      openDay: 'Open Everyday',
      openHour: '07.00 AM - 04.00 PM',
      price: 'IDR 20.000',
      imgSlider1: 'assets/images/wp4.jpg',
      imgSlider2: 'assets/images/wp2.jpg',
      imgSlider3: 'assets/images/wp1.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value){
                      setState((){
                        if(value!=null){
                          value
                              ? data.doneTourismPlaceList.add(place)
                              : data.doneTourismPlaceList.remove(place);
                        }
                      });
                    });
              }
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}