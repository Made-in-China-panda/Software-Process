import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {
  options: any;
  options02: any;
  constructor(private http: HttpClient, private router: ActivatedRoute) { }
  userName;
  name;
  newPeople;
  allPeople;
  notes;
  datas;
  dataNotes = [];
  dataPeople = [];
  numbers;

  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }

  ngOnInit() {

        this.http.get('http://192.168.56.144:8080' + '/main').subscribe((data) => { // 监听
          this.numbers = data[0];
          console.log(data);
          this.newPeople = this.numbers.newPeople;
          console.log(this.numbers.newPeople);
          this.allPeople = this.numbers.allPeople;
          this.notes = this.numbers.notes; 
        });


    this.name = this.router.snapshot.params['name'];
    this.options =  {
      title: {
          text: '上周总用户数量'
      },
      tooltip : {
          trigger: 'axis',
          axisPointer: {
              type: 'cross',
              label: {
                  backgroundColor: '#6a7985'
              }
          }
      },
      legend: {
          data: ['总用户']
      },
      toolbox: {
          feature: {
              saveAsImage: {}
          }
      },
      grid: {
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
      },
      xAxis : [
          {
              type : 'category',
              boundaryGap : false,
              data : ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
          }
      ],
      yAxis : [
          {
              type : 'value'
          }
      ],
      series : [
          {
              name: '总用户',
              type: 'line',
              stack: '总量',
              label: {
                  normal: {
                      show: true,
                      position: 'top'
                  }
              },
              areaStyle: {normal: {}},
              data: [1,2,3,4,5,6,7]
          }
      ]
  };
    const myecharts = echarts.init(document.getElementById('echarts'));
            myecharts.setOption(this.options);

  this.options02 =  {
    title: {
        text: '评论量走势'
    },
    tooltip : {
        trigger: 'axis',
        axisPointer: {
            type: 'cross',
            label: {
                backgroundColor: '#6a7985'
            }
        }
    },
    legend: {
        data: ['总评论']
    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name: '总评论',
            type: 'line',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'top'
                }
            },
            areaStyle: {normal: {}},
            data: [1,2,3,4,5,6,7]
        }
    ]
};
  const notes = echarts.init(document.getElementById('notes'));
  notes.setOption(this.options02);

}


}


