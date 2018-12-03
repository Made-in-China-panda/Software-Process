import { Component ,ViewChild,ElementRef } from '@angular/core';
import { NavController } from 'ionic-angular';


@Component({
  selector: 'page-where',
  templateUrl: 'where.html'
})
export class WherePage {
  @ViewChild('container1') container:ElementRef;//与html中div #container1对应 
  chart :any;

  constructor(public navCtrl: NavController) {

  }
  data = [
    
    {name: '大庆', value: 279}
];
  geoCoordMap = {
    
    '大庆':[125.03,46.58]
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
    
    


    return {
        type: 'polygon',
        
        
    };
}
  
  ionViewDidLoad() {
 
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
					center: [104.114129, 37.550339],
					zoom: 4,
					roam: true,
					mapStyle: {
						styleJson: [
							   
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
						name: '黑龙江省',
						type: 'effectScatter',
						coordinateSystem: 'bmap',
						data: this.convertData(this.data.sort(function (a, b) {
							return b.value - a.value;
						}).slice(0, 6)),
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
								color: '#000',
								shadowBlur: 10,
								shadowColor: '#000'
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
}
