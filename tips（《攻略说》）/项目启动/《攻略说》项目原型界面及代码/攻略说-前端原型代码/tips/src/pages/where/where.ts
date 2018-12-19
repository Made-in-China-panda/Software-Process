import { Component ,ViewChild,ElementRef } from '@angular/core';
import { NavController, NavParams, AlertController } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';


@Component({
  selector: 'page-where',
  templateUrl: 'where.html'
})
export class WherePage {
  @ViewChild('container1') container:ElementRef;//与html中div #container1对应 
  chart :any;
	places;
	allplace;
  	where;
	city;
	love = {
		id:"",
		name:""
	};
	man: string;
	nickname: string;
	loves=[];
	userid: string;
	user: string[];
	headers=new HttpHeaders({
		'Content-Type': 'application/x-www-form-urlencoded'
	});

	

	
	  
	
  constructor(public alertCtrl: AlertController,private http: HttpClient,public navCtrl: NavController,public navParams: NavParams) {
		this.places = navParams.data;
    this.where = navParams.data[0].where.split('/');
		//console.log(this.places[0].name);
		this.http.get('http://192.168.56.144:8080/'+this.places[0].name,{
        headers:new HttpHeaders({
        }),
      }).subscribe((data) => { // 监听
        //console.log(data);
        this.allplace = data;
      });
			if(this.places[0].name=='xizang'){
				this.city=6;
			}
			else if(this.places[0].name=='sichuan'){
				this.city=6.5;
			}
			else if(this.places[0].name=='shandong'){
				this.city=7;
			}
			else if(this.places[0].name=='xianggang'){
				this.city=10.5;
			}
			else if(this.places[0].name=='neimeng'){
				this.city=7;
			}
  }
  data = [
		{name: '香港', value: 150},
		{name: '迪士尼乐园', value: 100},
		{name: '海洋公园', value: 100},
		{name: '太平山顶', value: 100},
		{name: '浅水湾', value: 100},
		{name: '济南市', value: 150},
		{name: '泰山', value: 100},
		{name: '青岛崂山', value: 100},
		{name: '千佛山', value: 100},
		{name: '临沂大峡谷', value: 100},
		{name: '呼和浩特市', value: 150},
		{name: '呼伦贝尔大草原', value: 100},
		{name: '鄂尔多斯草原', value: 100},
		{name: '察尔湖', value: 100},
		{name: '凉城岱海', value: 100},
		{name: '南迦巴瓦峰', value: 100},
		{name: '布达拉宫', value: 100},
		{name: '大昭寺', value: 100},
		{name: '乐山大佛', value: 100},
		{name: '九寨沟景区', value: 100},
		{name: '都江堰景区', value: 100},
		{name: '稻城亚丁', value: 100},
		{name: '成都市', value: 150},
		{name: '扎什伦布寺', value:100},
		{name: '拉萨市', value:150},
];
  geoCoordMap = {
		'香港':[114.15,22.15],
		'迪士尼乐园':[114.05,22.31],
		'海洋公园':[113.41,23.12],
		'太平山顶':[114.15,22.27],
		'浅水湾':[114.21,22.22],
		'呼和浩特市':[111.75,40.84],
		'呼伦贝尔大草原':[117.95,49.49],
		'鄂尔多斯草原':[108.63,39.81],
		'察尔湖':[114.05,40.86],
		'凉城岱海':[112.69,40.57],
		'济南市':[116.98,36.67],
		'千佛山':[117.04,36.50],
		'泰山':[117.58,36.26],
		'临沂大峡谷':[118.54,35.73],
		'青岛崂山':[120.54,36.19],
		'拉萨市':[91.06,29.36],
		'扎什伦布寺':[88.86,29.26],
		'南迦巴瓦峰':[95.06,29.63],
		'大昭寺':[91.13,30.05],
		'布达拉宫':[91.117,29.651],
		'乐山大佛':[103.78,29.54],
		'成都市':[104.07,30.67],
		'都江堰景区':[103.61,31.00],
		'稻城亚丁':[100.29,28.46],
		'九寨沟景区':[103.92,33.16]
};

convertData = function (data) {
	var res = [];
	for (var i = 0; i < data.length; i++) {
			var geoCoord = this.geoCoordMap[data[i].name];
			if (geoCoord) {
					res.push({
							name: data[i].name,
							value: geoCoord.concat(data[i].value)
					});
			}
	}
	return res;
};

  renderItem(params, api) {
    var coords = [
			[116.7,39.53],
			[103.73,36.03],
			[112.91,27.87],
			[120.65,28.01],
			[119.57,39.95]
	];
	var points = [];
	for (var i = 0; i < coords.length; i++) {
			points.push(api.coord(coords[i]));
	}
	var color = api.visual('color');
	return {
		type: 'polygon',
		
		style: api.style({
				fill: color,
				
		})
};
}
  
  ionViewDidLoad() {
 this.man = localStorage.getItem('man');
		this.user = this.man.split('/');
		console.log(this.user);
		this.userid = this.user[0];
		
    let ctx = this.container.nativeElement;
		this.chart = echarts.init(ctx);
		this.chart.setOption(
			{
				// backgroundColor: '#404a59',
				title: {
				   
					
					left: 'center',
					
				},
				tooltip : {
					trigger: 'item'
				},
				bmap: {
					center: this.where,
					zoom: this.city,
					roam: true,
					mapStyle: {
						styleJson: [
							{
									"featureType": "water",
									"elementType": "all",
									"stylers": {
											"color": "#e6e6fa"
									}
							},
							{
									"featureType": "land",
									"elementType": "all",
									"stylers": {
											"color": "#fffff0"
									}
							},
							{
									"featureType": "boundary",
									"elementType": "geometry",
									"stylers": {
											"color": "#064f85"
									}
							},
							{
									"featureType": "railway",
									"elementType": "all",
									"stylers": {
											"visibility": "off"
									}
							},
							{
									"featureType": "highway",
									"elementType": "geometry",
									"stylers": {
											"color": "#cccccc"
									}
							},
							{
									"featureType": "highway",
									"elementType": "geometry.fill",
									"stylers": {
											"color": "#faebd7",
											"lightness": 1
									}
							},
							{
									"featureType": "highway",
									"elementType": "labels",
									"stylers": {
											"visibility": "off"
									}
							},
							{
									"featureType": "arterial",
									"elementType": "geometry",
									"stylers": {
											"color": "#004981"
									}
							},
							
							
						 
							{
									"featureType": "boundary",
									"elementType": "geometry.fill",
									"stylers": {
											"color": "#029fd4"
									}
							},
							
							{
									"featureType": "label",
									"elementType": "all",
									"stylers": {
											"visibility": "off"
									}
							}
			]
					}
				},
				series : [
					{
						name: this.city,
						type: 'effectScatter',
						coordinateSystem: 'bmap',
						data: this.convertData(this.data.sort(function (a, b) {
							return b.value - a.value;
						}).slice(0, 1000)),
						symbolSize: function (val) {
							return val[2] / 10;
						},
						showEffectOn: 'emphasis',
						rippleEffect: {
							brushType: 'stroke'
						},
						hoverAnimation: true,
						label: {
							normal: {
								formatter: '{b}',
								position: 'right',
								show: true
							}
						},
						itemStyle: {
							normal: {
								color: '#330',
								shadowBlur: 10,
								shadowColor: '#fff'
							}
						},
						zlevel: 1
					},
					{
						type: 'custom',
						coordinateSystem: 'bmap',
						renderItem: this.renderItem,
						itemStyle: {
							normal: {
								opacity: 0.5
							}
						},
						animation: false,
						silent: true,
						data: [0],
						z: -10
					}
					
				]
			}
    );
	  }
	  shoucang(e){
		var str = e.target.parentNode.parentNode.firstElementChild.innerHTML.split("&")[0];
		this.love.id = this.userid;
		this.love.name = str.split(' ')[1];
		console.log(this.love);
		////////////////////////////////////////////////////////////////
		this.http.get('http://192.168.56.144:8080/'+'shoucang',{
    headers:new HttpHeaders({
    }),
  }).subscribe((data) => { // 监听
    for(var j in data){
      this.loves[j] = data[j].name;
    }
    if(this.loves.indexOf(str.split(' ')[1])>-1){
		const alert = this.alertCtrl.create({
			title: 'Hi Friend!',
			subTitle: '您已经收藏过了',
			buttons: ['OK']
		  });
		  alert.present();
    }else{
      	this.http.post('http://192.168.56.144:8080/'+'shoucang',this.love,
          {headers:this.headers}).subscribe((data) => {});
          console.log(this.loves)
		  const alert = this.alertCtrl.create({
			title: 'Hi Friend!',
			subTitle: '收藏成功',
			buttons: ['OK']
		  });
		  alert.present();
    }
  });
	}
	
}
