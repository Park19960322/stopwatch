let milsec=0;//밀리세컨드로 측정되기에 기준값
let nowstate=0;//현재 초시계 작동상태(스탑인지 아닌지)
let then=0;//기준시간
let now=0;//현재 초시계 시간

function stSW()//동작 스위치
{
    if(nowstate==1)//동작중이라면
    {
        nowstate=0;//동작 정지
        now=new Date();//현재시간 값 저장
        milsec=now.getTime()-then.getTime()//현재 시간에서 기준시간 빼서 계산
        document.watchForm.time.value=parseInt(milsec/1000);//밀리세컨드를 초단위로 변환
    }
    else 
    {
        nowstate=1; //동작그만
        then=new Date(); //현재 시간값
        then.setTime(then.getTime()-milsec); //시간카운팅 정지
    }
}

function reSW()//리셋스위치
{
    nowstate=0;//동작정지
    milsec=0;//시간 초기화
    document.watchForm.time.value=parseInt(ms/1000);//밀리세컨드를 초단위로 변환
}

function display()//시간표시
{
  setTimeout("display();",1000); //1초에 한번씩 시간 표시
  if (nowstate==1) //동작중

  {
    now=new Date(); //계속해서 현재값 갱신
    milsec=now.getTime()-then.getTime();//시간값 계산
    document.watchForm.time.value=parseInt(milsec/1000);//밀리세컨드를 초단위로 변환
  }
}
