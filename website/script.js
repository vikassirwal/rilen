(function(){
  var reduce=window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  var hasIO='IntersectionObserver' in window;
  if(hasIO&&!reduce)document.documentElement.classList.add('io');

  /* ---------- icons ---------- */
  var IC={
    home:'<path d="M3 11l9-8 9 8M5 10v10h5v-6h4v6h5V10"/>',
    live:'<circle cx="12" cy="12" r="2"/><path d="M7 7a7 7 0 0 0 0 10M17 7a7 7 0 0 1 0 10"/>',
    bolt:'<path d="M13 2L4 14h7l-1 8 9-12h-7z"/>',
    wallet:'<rect x="3" y="6" width="18" height="13" rx="2"/><path d="M3 10h18"/><circle cx="16" cy="14.5" r="1"/>',
    compare:'<path d="M4 20V10M10 20V4M16 20v-8M22 20H2"/>',
    users:'<circle cx="9" cy="8" r="3"/><path d="M3 20c0-3.3 2.7-6 6-6s6 2.7 6 6"/><circle cx="17" cy="9" r="2.5"/><path d="M16 14c3 0 5 2 5 5"/>',
    book:'<path d="M4 5a2 2 0 0 1 2-2h13v16H6a2 2 0 0 0-2 2z"/><path d="M4 19V5"/>',
    edit:'<path d="M4 20h4L19 9l-4-4L4 16z"/>',
    chat:'<path d="M4 5h16v11H9l-5 4z"/>',
    cal:'<rect x="3" y="5" width="18" height="16" rx="2"/><path d="M3 10h18M8 3v4M16 3v4"/>',
    star:'<path d="M12 3l2.7 5.6 6.1.9-4.4 4.3 1 6.1L12 17l-5.4 2.9 1-6.1L3.2 9.5l6.1-.9z"/>',
    doc:'<path d="M6 3h9l4 4v14H6z"/><path d="M14 3v5h5"/>',
    target:'<circle cx="12" cy="12" r="9"/><circle cx="12" cy="12" r="5"/><circle cx="12" cy="12" r="1"/>',
    spark:'<path d="M12 3v4M12 17v4M3 12h4M17 12h4M6 6l2.5 2.5M15.5 15.5L18 18M18 6l-2.5 2.5M8.5 15.5L6 18"/>',
    check12:'<path d="M2.5 6.3l2.4 2.4 4.6-5" transform="translate(-0.5 0) scale(1)"/>',
    arrow:'<path d="M4 12h15M13 6l6 6-6 6"/>'
  };
  function ic(n){
    if(n==='check12')return '<svg width="12" height="12" viewBox="0 0 12 12" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M2.5 6.3l2.4 2.4 4.6-5"/></svg>';
    return '<svg width="'+(n==='arrow'?24:17)+'" height="'+(n==='arrow'?24:17)+'" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">'+IC[n]+'</svg>';
  }
  document.querySelectorAll('[data-ic]').forEach(function(e){e.innerHTML=ic(e.dataset.ic)});
  var CHECK=ic('check12');

  /* ---------- nav solid on scroll ---------- */
  var nav=document.getElementById('nav');
  function navState(){nav.classList.toggle('solid',window.scrollY>40)}
  window.addEventListener('scroll',navState,{passive:true});navState();

  /* ---------- hero rotator ---------- */
  (function(){
    var rot=[].slice.call(document.querySelectorAll('.rot-i')),sub=[].slice.call(document.querySelectorAll('.rsub-i')),
        tabs=[].slice.call(document.querySelectorAll('.rtab')),box=document.getElementById('rtabs'),cur=0;
    function go(n){
      var prev=cur;cur=(n+rot.length)%rot.length;
      rot.forEach(function(el,i){el.classList.remove('on','off');if(i===cur)el.classList.add('on');else if(i===prev&&prev!==cur)el.classList.add('off');el.setAttribute('aria-hidden',i===cur?'false':'true')});
      sub.forEach(function(el,i){el.classList.toggle('on',i===cur)});
      tabs.forEach(function(t){t.classList.remove('on');t.setAttribute('aria-pressed','false')});
      void box.offsetWidth;
      tabs[cur].classList.add('on');tabs[cur].setAttribute('aria-pressed','true');
    }
    tabs.forEach(function(t,i){t.addEventListener('click',function(){go(i)})});
    box.addEventListener('animationend',function(e){if(e.animationName==='fill')go(cur+1)});
    ['mouseenter','focusin'].forEach(function(ev){box.addEventListener(ev,function(){box.classList.add('paused')})});
    ['mouseleave','focusout'].forEach(function(ev){box.addEventListener(ev,function(){box.classList.remove('paused')})});
    go(0);
  })();

  /* ---------- hero canvas: silos gathering into one picture ---------- */
  (function(){
    var cv=document.getElementById('bg'),ctx=cv.getContext('2d'),hero=cv.parentElement;
    var W=0,H=0,P=[],run=false,t0=performance.now();
    var S=[['Fees','#FFC24D'],['Attendance','#37D0DE'],['Marks','#9C92FF'],['Timetable','#FF7A66'],['Transport','#3DD6A8'],['Feedback','#FF8FB3']];
    function rnd(a,b){return a+Math.random()*(b-a)}
    S.forEach(function(s,k){for(var i=0;i<16;i++)P.push({k:k,a:rnd(0,6.28),r:rnd(.25,1),sp:rnd(.18,.5)*(Math.random()<.5?-1:1)})});
    function size(){
      var r=hero.getBoundingClientRect(),d=Math.min(2,window.devicePixelRatio||1);
      W=r.width;H=r.height;cv.width=W*d;cv.height=H*d;ctx.setTransform(d,0,0,d,0,0);
    }
    function ease(x){x=Math.max(0,Math.min(1,x));return x*x*(3-2*x)}
    function frame(now,fixed){
      var t=(now-t0)/1000,raw=.5-.5*Math.cos(t/22*Math.PI*2),u=fixed!==undefined?fixed:ease((raw-.1)/.78);
      ctx.clearRect(0,0,W,H);
      var wide=W>900,hx=wide?W*.77:W*.5,hy=wide?H*.5:H*.82,Rs=wide?Math.min(W*.19,H*.34):Math.min(W*.34,H*.15),cr=44-22*u,pts=[];
      var g=ctx.createRadialGradient(hx,hy,0,hx,hy,Rs*1.3);g.addColorStop(0,'rgba(156,146,255,'+(.05+.3*u)+')');g.addColorStop(1,'rgba(156,146,255,0)');
      ctx.fillStyle=g;ctx.fillRect(0,0,W,H);
      var an=S.map(function(s,k){
        var th=-Math.PI/2+k*2*Math.PI/6,sx=hx+Rs*Math.cos(th),sy=hy+Rs*Math.sin(th)*(wide?1:.6),ux=hx+Rs*.17*Math.cos(th),uy=hy+Rs*.17*Math.sin(th)*(wide?1:.6);
        return {x:sx+(ux-sx)*u,y:sy+(uy-sy)*u,th:th};
      });
      P.forEach(function(p){var a=an[p.k],ang=p.a+p.sp*t;pts.push({x:a.x+Math.cos(ang)*cr*p.r,y:a.y+Math.sin(ang)*cr*p.r*.85,k:p.k})});
      ctx.lineWidth=1;
      for(var i=0;i<pts.length;i++)for(var j=i+1;j<pts.length;j++){
        var dx=pts[i].x-pts[j].x,dy=pts[i].y-pts[j].y,d=Math.sqrt(dx*dx+dy*dy),same=pts[i].k===pts[j].k,lim=same?54:(u>.4?58+80*u:0),al;
        if(!lim||d>lim)continue;
        al=(same?.32:.2*ease((u-.4)/.6))*(1-d/lim);
        ctx.strokeStyle='rgba(205,200,255,'+al+')';ctx.beginPath();ctx.moveTo(pts[i].x,pts[i].y);ctx.lineTo(pts[j].x,pts[j].y);ctx.stroke();
      }
      pts.forEach(function(p){ctx.fillStyle=S[p.k][1];ctx.globalAlpha=.9;ctx.beginPath();ctx.arc(p.x,p.y,2.1,0,6.283);ctx.fill()});
      ctx.globalAlpha=1;ctx.textAlign='center';ctx.font='600 12px Figtree, Segoe UI, sans-serif';
      var la=(1-u)*.8;
      if(la>.02){ctx.fillStyle='rgba(255,255,255,'+la+')';S.forEach(function(s,k){var a=an[k];ctx.fillText(s[0],a.x+Math.cos(a.th)*(cr+22),a.y+Math.sin(a.th)*(cr+18)+4)})}
      var ha=ease((u-.6)/.4);
      if(ha>.02){ctx.fillStyle='rgba(255,255,255,'+ha*.9+')';ctx.font='700 13px Figtree, Segoe UI, sans-serif';ctx.fillText('One picture',hx,hy+Rs*.17+cr+20)}
    }
    function loop(now){if(!run)return;frame(now);requestAnimationFrame(loop)}
    size();window.addEventListener('resize',function(){size();if(reduce)frame(performance.now(),.85)});
    if(reduce){frame(performance.now(),.85);return}
    if(hasIO){new IntersectionObserver(function(es){var v=es[0].isIntersecting;if(v&&!run){run=true;requestAnimationFrame(loop)}else if(!v)run=false}).observe(hero)}
    else{run=true;requestAnimationFrame(loop)}
  })();

  /* ---------- chart helper ---------- */
  function chart(el,o){
    var W=o.w,H=o.h,pl=o.pl||34,pr=o.pr||10,pt=o.pt||12,pb=o.pb||24;
    var x=function(i){return pl+(W-pl-pr)*i/(o.n-1)},y=function(v){return H-pb-(H-pt-pb)*(v-o.min)/(o.max-o.min)};
    var s='<svg viewBox="0 0 '+W+' '+H+'" role="img" aria-label="'+o.label+'">';
    o.ticks.forEach(function(t){s+='<line class="gl" x1="'+pl+'" x2="'+(W-pr)+'" y1="'+y(t)+'" y2="'+y(t)+'"/><text class="tx" x="'+(pl-6)+'" y="'+(y(t)+3.5)+'" text-anchor="end">'+t+(o.unit||'')+'</text>'});
    o.xl.forEach(function(p){s+='<text class="tx" x="'+x(p[0])+'" y="'+(H-6)+'" text-anchor="middle">'+p[1]+'</text>'});
    if(o.pre)s+=o.pre(x,y);
    o.series.forEach(function(se){
      var st=se.from||0,d='';se.data.forEach(function(v,k){d+=(k?'L':'M')+x(st+k).toFixed(1)+' '+y(v).toFixed(1)});
      s+='<path class="ln '+se.cls+(se.draw?' draw" pathLength="1':(se.fade?' fadeln':''))+'" d="'+d+'"/>';
    });
    if(o.post)s+=o.post(x,y);
    el.innerHTML=s+'</svg>';
  }
  function extend(a,steps){var v=a,out=[a];steps.forEach(function(p){for(var i=0;i<p[0];i++){v+=p[1];out.push(v)}});return out}

  var plan=[];for(var d=0;d<=30;d++)plan.push(d*100/30);
  var actual=[0,3,6,9,12.5,15.5,19,22,25,27.5,31,34,37,40,43,45.5,49,52,55],base=extend(55,[[4,3],[5,1.4],[3,2.7]]),plus=extend(55,[[4,3.4],[5,2.6],[3,3.9]]);
  chart(document.getElementById('ch-collect'),{w:560,h:230,n:31,min:0,max:100,pr:40,ticks:[0,25,50,75,100],unit:'%',
    xl:[[0,'1st'],[7,'8th'],[14,'15th'],[22,'23rd'],[30,'30th']],
    label:'Fee collection this month. 55 percent collected so far. Without action the forecast is 82 percent, with the RILEN plan 93 percent.',
    pre:function(x,y){
      var s='<rect class="f-soft" x="'+x(22.5)+'" y="'+y(100)+'" width="'+(x(27.5)-x(22.5))+'" height="'+(y(0)-y(100))+'"/><text class="tx" x="'+((x(22.5)+x(27.5))/2)+'" y="'+(y(100)+12)+'" text-anchor="middle">Harvest season</text>';
      var p='M'+x(18)+' '+y(55);plus.forEach(function(v,k){p+='L'+x(18+k).toFixed(1)+' '+y(v).toFixed(1)});
      for(var k=base.length-1;k>=0;k--)p+='L'+x(18+k).toFixed(1)+' '+y(base[k]).toFixed(1);
      return s+'<path class="f-acc fadeln" d="'+p+'Z"/>';
    },
    series:[{data:plan,cls:'c-mut thin dot2'},{data:actual,cls:'c-ink',draw:1},{data:base,from:18,cls:'c-mut dash',fade:1},{data:plus,from:18,cls:'c-acc dash',fade:1}],
    post:function(x,y){return '<line class="gl" x1="'+x(18)+'" x2="'+x(18)+'" y1="'+y(100)+'" y2="'+y(0)+'" style="stroke:var(--ink)"/><text class="tx tx-b" x="'+x(18)+'" y="'+(y(100)-1)+'" text-anchor="middle">Today</text><text class="tx tx-b" x="'+(x(30)+5)+'" y="'+(y(93)+4)+'" style="fill:var(--acc)">93%</text><text class="tx" x="'+(x(30)+5)+'" y="'+(y(82)+4)+'">82%</text>'}
  });

  var synA=[0,6,13,21,29,37,45,53,58,62],synF=[62,68,74,81,87,93,100],synP=[];for(var w=0;w<=15;w++)synP.push(w*100/15);
  chart(document.getElementById('ch-syl'),{w:520,h:190,n:16,min:0,max:100,ticks:[0,50,100],unit:'%',pr:16,
    xl:[[0,'W1'],[5,'W6'],[9,'Now'],[15,'Term end']],label:'Maths syllabus covered: 62 percent at week 9, slightly ahead of plan.',
    series:[{data:synP,cls:'c-mut thin dot2'},{data:synA,cls:'c-acc',draw:1},{data:synF,from:9,cls:'c-acc dash',fade:1}],
    post:function(x,y){return '<circle cx="'+x(9)+'" cy="'+y(62)+'" r="4.5" style="fill:var(--acc)"/><text class="tx tx-b" x="'+x(9)+'" y="'+(y(62)-9)+'" text-anchor="middle">62%</text>'}});

  chart(document.getElementById('ch-subjects'),{w:520,h:200,n:6,min:55,max:85,ticks:[60,70,80],pr:58,
    xl:[[0,'T1'],[1,'T2'],[2,'T3'],[3,'T4'],[4,'T5'],[5,'T6']],label:'Aarav progress across six tests. Maths rose from 62 to 74, science fell from 78 to 66, English rose from 70 to 75.',
    series:[{data:[62,64,63,68,71,74],cls:'c-ink',draw:1},{data:[78,80,79,76,70,66],cls:'c-need',draw:1},{data:[70,71,73,72,74,75],cls:'c-good',draw:1}],
    post:function(x,y){return '<text class="tx tx-b" x="'+(x(5)+8)+'" y="'+(y(74)+1)+'">Maths</text><text class="tx tx-b" x="'+(x(5)+8)+'" y="'+(y(66)+4)+'">Science</text><text class="tx tx-b" x="'+(x(5)+8)+'" y="'+(y(75)+14)+'">English</text>'}});

  chart(document.getElementById('ch-progress'),{w:380,h:170,n:6,min:40,max:80,ticks:[40,60,80],unit:'%',pr:34,xl:[[0,'6 wks ago'],[5,'Now']],label:'Mastery rose from 50 to 72 percent over six weeks.',
    series:[{data:[50,52,55,58,64,72],cls:'c-acc',draw:1}],
    post:function(x,y){return '<circle cx="'+x(5)+'" cy="'+y(72)+'" r="4.5" style="fill:var(--acc)"/><text class="tx tx-b" x="'+(x(5)+8)+'" y="'+(y(72)+4)+'">72%</text>'}});

  /* sparklines */
  document.querySelectorAll('[data-spark]').forEach(function(svg){
    var v=svg.getAttribute('data-spark').split(',').map(Number),mn=Math.min.apply(null,v),mx=Math.max.apply(null,v),w=64,h=26,dd='';
    v.forEach(function(n,i){dd+=(i?'L':'M')+(i*w/(v.length-1)).toFixed(1)+' '+(h-3-(h-6)*(n-mn)/((mx-mn)||1)).toFixed(1)});
    svg.setAttribute('viewBox','0 0 '+w+' '+h);svg.innerHTML='<path d="'+dd+'"/>';
  });

  /* ---------- institution: live campus ---------- */
  var CL=['1A','2A','3A','4A','5A','5B','6A','7A','8A','8B','9A','10A'];
  var P2=[['EVS','Ms. Das','in'],['Rhymes','Ms. Nair','in'],['PT','Mr. Singh, ground','act'],['Maths','Ms. Joshi','in'],['English','Mr. Bose','in'],['Science','Mr. Khan (substitute)','sub'],['Hindi','Ms. Verma','in'],['Social','Mr. Roy','in'],['Maths','Mr. Gupta','in'],['Maths','Ms. Rao','in'],['Physics','Mr. Sen','in'],['Science exam','Ms. Kapoor, Hall B','exam']];
  var SC=[
    {t:'9:10 am',pill:'Assembly ongoing',ban:'Assembly is on the ground and ends at 9:25. Class 10A is in its pre-board Science exam in Hall B.',at:0,tiles:CL.map(function(c,i){return i===11?['Science exam','Ms. Kapoor, Hall B','exam']:['Assembly','On the ground','asm']})},
    {t:'10:15 am',pill:'Period 2 in session',ban:'Period 2 is running. 10 classes have their planned teacher, 5B has a substitute and 10A is in an exam.',at:2,tiles:P2},
    {t:'11:20 am',pill:'Short break',ban:'Break until 11:35. Class 10A has finished its exam and papers are with the examiner.',at:3,tiles:CL.map(function(){return ['Break','Playground','brk']})}
  ];
  var BL=[['Assembly','9:00',5],['P1','9:25',8],['P2','10:10',8],['Break','11:15',4],['P3','11:35',8],['P4','12:20',8],['Lunch','1:05',5],['P5','1:40',8],['P6','2:25',8]];
  var cs=0,userPick=false,tl=document.getElementById('tl'),tiles=document.getElementById('tiles');
  function drawScene(n){
    cs=n;var s=SC[n];
    tl.innerHTML=BL.map(function(b,i){var ok=SC.some(function(x){return x.at===i});return '<button style="--w:'+b[2]+'" class="'+(i===s.at?'now':(i<s.at?'past':''))+(ok?' ok':'')+'" data-at="'+i+'"'+(ok?'':' tabindex="-1"')+'>'+b[0]+'<small>'+b[1]+'</small></button>'}).join('');
    document.getElementById('banner').textContent=s.ban;
    document.getElementById('clock').textContent=s.t;
    document.getElementById('livepill').textContent='Live · '+s.pill;
    tiles.innerHTML=s.tiles.map(function(t,i){return '<button class="tile st-'+t[2]+'" style="--i:'+i+'" data-i="'+i+'"><b>'+CL[i]+'</b><span>'+t[0]+'</span><span>'+t[1]+'</span></button>'}).join('');
    document.getElementById('tdetail').innerHTML='Tap a class to see what is on.';
  }
  tl.addEventListener('click',function(e){var b=e.target.closest('button.ok');if(!b)return;userPick=true;var at=+b.dataset.at;for(var i=0;i<SC.length;i++)if(SC[i].at===at)drawScene(i)});
  tiles.addEventListener('click',function(e){
    var b=e.target.closest('.tile');if(!b)return;userPick=true;
    tiles.querySelectorAll('.tile').forEach(function(t){t.classList.remove('sel')});b.classList.add('sel');
    var i=+b.dataset.i,t=SC[cs].tiles[i];
    document.getElementById('tdetail').innerHTML='<b>'+CL[i]+'</b> · '+t[0]+' · '+t[1]+(t[2]==='sub'?'. Ms. Iyer is absent; lesson plan shared with the substitute.':'');
  });
  drawScene(0);
  if(!reduce)setInterval(function(){if(userPick||document.getElementById('scr-institution').hidden)return;drawScene((cs+1)%SC.length)},6500);

  /* routes */
  var RT=[['Route 1',5],['Route 2',30],['Route 3',8],['Route 4',35],['Route 5',10]];
  document.getElementById('routes').innerHTML=RT.map(function(r,i){return '<div class="rt'+(r[1]>=25?' hot':'')+'" style="--i:'+i+'"><span>'+r[0]+'</span><span class="rt-t"><span class="rt-f" style="width:'+(r[1]/40*100)+'%"></span></span><b>'+r[1]+' min</b></div>'}).join('');

  /* benchmark */
  var BM=[['Fees paid on time',78,71,85],['Student attendance',94,92,96],['Staff retention',88,90,95],['Parent response rate',61,74,88],['Syllabus done at mid-term',58,55,64],['Enquiry to enrolment',32,28,41]];
  var lo=40,rg=60;
  document.getElementById('db').innerHTML=BM.map(function(m,i){var f=function(v){return ((v-lo)/rg*100)+'%'};
    return '<div class="db-r"><span>'+m[0]+'</span><div class="db-tr"><span class="db-rng" style="left:'+f(m[2])+';width:'+((m[3]-m[2])/rg*100)+'%"></span><span class="db-med" style="left:'+f(m[2])+'"></span><span class="db-you'+(m[1]<m[2]?' gap':'')+'" style="left:'+f(m[1])+';--i:'+i+'"></span></div><span class="db-v"><b>You '+m[1]+'%</b> · median '+m[2]+'%</span></div>'}).join('');

  /* ---------- teacher ---------- */
  var chs='',chn='';
  for(var c=1;c<=12;c++){chs+='<span class="ch'+(c<=7?' d':(c===8?' c':''))+'" style="--i:'+c+'" title="Chapter '+c+'"></span>';chn+='<span>'+c+'</span>'}
  document.getElementById('chs').innerHTML=chs;document.getElementById('chn').innerHTML=chn;

  var names=['Aarav','Meera','Rohan','Ishaan','Sara','Dev','Kavya','Tanvi'],cons=['Fractions','Ratios','Decimals','Algebra','Geometry'];
  var lv=[[1,1,2,2,2],[0,2,3,2,2],[0,1,2,1,3],[0,2,2,3,2],[0,1,3,2,1],[0,2,2,2,3],[3,3,2,3,2],[2,3,3,3,3]],lab=['Needs help','Getting there','Solid','Strong'];
  var hh='<span></span>';cons.forEach(function(c){hh+='<span class="hd">'+c+'</span>'});
  lv.forEach(function(r,i){hh+='<span class="nm">'+names[i]+'</span>';r.forEach(function(v,j){hh+='<span class="cell l'+v+'" style="--i:'+(i*5+j)+'" title="'+names[i]+', '+cons[j]+': '+lab[v]+'"></span>'})});
  hh+='<span class="nm">Stuck</span>';cons.forEach(function(c,j){var n=lv.filter(function(r){return r[j]===0}).length;hh+='<span class="sum">'+(n?n+' students':'')+'</span>'});
  document.getElementById('heat').innerHTML=hh;

  var FB=[['Explanations clear',4.4],['Doubts answered',4.5],['Practice is useful',4.1],['Pace feels right',3.8]];
  document.getElementById('fbk').innerHTML=FB.map(function(f,i){return '<div class="fb-r"><span>'+f[0]+'</span><span class="fb-t"><span class="fb-f" style="width:'+(f[1]/5*100)+'%;--i:'+i+'"></span></span><b>'+f[1]+'</b></div>'}).join('');

  var SUBJ=[['Maths',68,64],['Science',63,66],['English',72,70],['Social',70,69],['Hindi',74,72]];
  document.getElementById('cols').innerHTML=SUBJ.map(function(s,i){return '<div class="col"><b style="color:var(--ink)">'+s[1]+'</b><div class="col-t"><div class="col-f" style="height:'+((s[1]-40)/50*100)+'%;--i:'+i+'"></div><span class="col-m" style="bottom:'+((s[2]-40)/50*100)+'%"></span></div><span>'+s[0]+'</span></div>'}).join('');

  var pips=function(n){return '<span class="pips">'+[1,2,3].map(function(k){return '<i'+(k<=n?' class="on"':'')+'></i>'}).join('')+'</span>'};
  var STU=[
    {n:'Aarav',roll:7,flag:'Steady',sub:[['Maths',74,68],['Science',66,63],['English',75,72],['Social',70,70],['Hindi',72,74]],
     rev:[['Mr. Khan','Science','Strong on ideas, loses marks on diagrams. Extra practice assigned.'],['Ms. Das','Music','Keen and consistent. Ready for a grade exam.'],['Ms. Iyer','English','Writes with confidence. Vocabulary is growing.']],
     grow:[['Music',3,2,'Band Grade B+. Missed 2 rehearsals for tuition.',72],['Football',3,2,'Inter-house runner-up. Great stamina.',80],['Science',2,3,'Diagram marks are the gap. Practice queued.',58]],
     fb:[['Parent, last week','Aarav wants to join the music club but worries about his maths marks.'],['Aarav','Fractions feel hard when the class moves fast.']]},
    {n:'Meera',roll:21,flag:'Needs attention',sub:[['Maths',58,68],['Science',71,63],['English',80,72],['Social',69,70],['Hindi',75,74]],
     rev:[['Ms. Rao','Maths','Bright, but stalls on common denominators. Small group booked.'],['Mr. Khan','Science','Top of the class in lab work.'],['Ms. Nair','Art','Creative eye. Her poster is going on the display wall.']],
     grow:[['Art',3,2,'Poster selected for the school display.',85],['Maths',2,3,'Fractions gap. Small group Tue and Thu.',55],['Badminton',2,2,'Joined the school team in August.',64]],
     fb:[['Parent, Tuesday','Please give Meera extra fractions practice at home.'],['Meera','I like drawing scientific diagrams. Can we do more in class?']]},
    {n:'Rohan',roll:24,flag:'Needs attention',sub:[['Maths',55,68],['Science',64,63],['English',62,72],['Social',66,70],['Hindi',60,74]],
     rev:[['Ms. Rao','Maths','Improving in geometry. Fractions are still a gap and homework was late twice.'],['Ms. Iyer','English','Quiet in class. His write-ups are improving.'],['Mr. Singh','PT','Fastest sprinter in 8B.']],
     grow:[['Athletics',3,3,'Selected for district trials.',88],['Maths',1,3,'Needs steady practice. Parents want a plan.',48],['Reading',1,2,'Reading club suggested.',52]],
     fb:[['Parent, today','Rohan gets anxious before maths tests.'],['Rohan','I want to run faster and get to state level.']]},
    {n:'Kavya',roll:12,flag:'On track',sub:[['Maths',88,68],['Science',82,63],['English',84,72],['Social',79,70],['Hindi',81,74]],
     rev:[['Ms. Rao','Maths','Ready for extension problems. Try the Olympiad set.'],['Mr. Khan','Science','Asks thoughtful questions in the lab.'],['Ms. Das','Music','Sings well. Needs confidence for solos.']],
     grow:[['Science',3,3,'Science fair finalist.',90],['Music',2,1,'Choir member. Solo practice suggested.',66],['Maths',3,3,'Olympiad preparation.',92]],
     fb:[['Parent, last week','Kavya would like more challenging maths.'],['Kavya','Can I join the robotics club?']]}
  ];
  var sl=document.getElementById('slist'),sd=document.getElementById('sdet');
  sl.innerHTML=STU.map(function(s,i){return '<button class="sbtn" data-s="'+i+'" aria-selected="'+(i===0)+'"><i class="'+(s.flag==='Needs attention'?'f':'')+'"></i>'+s.n+'</button>'}).join('');
  function renderStu(i){
    var s=STU[i],h='<div class="sdet"><div class="sd-top"><span class="av">'+s.n[0]+'</span><div><span class="sd-n">'+s.n+'</span><br><span class="note">Class 8B · Roll '+s.roll+'</span></div><span class="tag '+(s.flag==='On track'||s.flag==='Steady'?'':'tag-need')+'" style="margin-left:auto">'+s.flag+'</span></div>';
    h+='<div class="sd-grid"><div class="sbox"><p class="sbox-t">How they are doing <span class="note">· line = class average</span></p>';
    s.sub.forEach(function(r,k){h+='<div class="sb"><span>'+r[0]+'</span><span class="sb-t"><span class="sb-f" style="width:'+r[1]+'%;animation-delay:'+(k*70)+'ms"></span><span class="sb-a" style="left:'+r[2]+'%"></span></span><b>'+r[1]+'</b></div>'});
    h+='</div><div class="sbox"><p class="sbox-t">What their teachers say</p>';
    s.rev.forEach(function(r){h+='<div class="quote">'+r[2]+'<small>'+r[0]+' · '+r[1]+'</small></div>'});
    h+='</div></div><div class="sbox"><p class="sbox-t">Where they want to grow <span class="note">· and how it is going</span></p><div class="gr gr-h"><span>Area</span><span>Student</span><span>Parents</span><span>Progress</span></div>';
    s.grow.forEach(function(g,k){h+='<div class="gr"><b>'+g[0]+'</b>'+pips(g[1])+pips(g[2])+'<div><span class="sb-t"><span class="sb-f" style="width:'+g[4]+'%;animation-delay:'+(k*90)+'ms"></span></span><span class="note">'+g[3]+'</span></div></div>'});
    h+='</div><div class="sd-grid">';s.fb.forEach(function(f){h+='<div class="sbox"><p class="sbox-t">'+f[0]+'</p><div class="quote">'+f[1]+'</div></div>'});
    sd.innerHTML=h+'</div></div>';
  }
  renderStu(0);
  sl.addEventListener('click',function(e){var b=e.target.closest('.sbtn');if(!b)return;sl.querySelectorAll('.sbtn').forEach(function(x){x.setAttribute('aria-selected','false')});b.setAttribute('aria-selected','true');renderStu(+b.dataset.s)});

  /* test builder */
  var TESTS={
    'Fractions':[[1,'Simplify 12/18.','Simplifying'],[1,'Write two fractions equivalent to 2/5.','Equivalence'],[2,'Which is greater, 3/4 or 5/8? Show your working.','Common denominators'],[2,'Add 2/3 and 3/4.','Common denominators'],[3,'A tank is 3/5 full. After 1/4 of the total is used, what fraction remains?','Word problem']],
    'Ratios':[[1,'Write 12:18 in simplest form.','Simplifying'],[2,'3 cups of flour go with 2 cups of sugar. How much flour for 6 cups of sugar?','Scaling'],[2,'Divide ₹360 in the ratio 2:3.','Sharing'],[3,'A map scale is 1:50,000. A road is 4 cm on the map. Find its real length.','Scale'],[3,'Are 3:4 and 6:8 equal ratios? Explain.','Equivalence']],
    'Algebra basics':[[1,'Simplify 3x + 2x.','Like terms'],[1,'Find x if x + 7 = 15.','One-step equations'],[2,'Solve 3x - 4 = 11.','Two-step equations'],[2,'Write an expression for "5 more than twice a number".','Forming expressions'],[3,'The perimeter of a rectangle is 34 cm. Its length is 3 cm more than its width. Find both.','Word problem']]
  };
  var chap='Fractions',adaptOn=true,tout=document.getElementById('tout');
  document.getElementById('chaps').addEventListener('click',function(e){var b=e.target.closest('.chip');if(!b)return;chap=b.dataset.chap;this.querySelectorAll('.chip').forEach(function(c){c.setAttribute('aria-pressed',c===b?'true':'false')})});
  document.getElementById('adapt').addEventListener('click',function(){adaptOn=!adaptOn;this.setAttribute('aria-checked',adaptOn?'true':'false')});
  document.getElementById('gen').addEventListener('click',function(){
    tout.classList.remove('is-done');
    tout.innerHTML='<p class="tb-l">Preparing your test</p><div class="sk"></div><div class="sk" style="width:80%"></div><div class="sk" style="width:90%"></div><div class="sk" style="width:60%"></div>';
    setTimeout(function(){
      var qs=TESTS[chap],h='<div class="pnl-h"><span class="pnl-t">'+chap+' · Class 8B</span><span class="pnl-s">20 min · 5 questions</span></div>';
      h+='<p class="note" style="margin-bottom:.4rem">'+(adaptOn?(chap==='Fractions'?'Adapted: extra weight on common denominators because 5 students are stuck.':'Adapted: balanced across levels for your class.'):'Standard mix across three levels.')+'</p><ol style="margin:0;padding:0;list-style:none">';
      qs.forEach(function(q,i){h+='<li class="qq" style="--i:'+i+'"><span class="tag tag-acc">L'+q[0]+'</span><span>'+q[1]+'</span><small>Targets: '+q[2]+'</small></li>'});
      h+='</ol><div class="q-act"><button class="b b-acc" data-go data-msg="Assigned to 8B, due Friday. Results will feed the class view.">Assign to 8B</button><button class="b">Edit</button></div><p class="q-msg"></p>';
      tout.innerHTML=h;
    },reduce?0:1100);
  });

  /* parent calendar */
  var cal='';for(var k=0;k<25;k++)cal+='<i style="--i:'+k+'" class="'+(k===8||k===17?'a':(k===12?'l':''))+'"></i>';
  document.getElementById('cal').innerHTML=cal;

  /* student radar */
  (function(){
    var cx=125,cy=112,R=76,L=['Fractions','Ratios','Decimals','Algebra','Geometry'],now=[45,58,78,72,66],was=[40,38,74,60,64];
    var ang=function(i){return -Math.PI/2+i*2*Math.PI/5},pt=function(i,v){return [cx+R*v/100*Math.cos(ang(i)),cy+R*v/100*Math.sin(ang(i))]};
    var poly=function(a){return a.map(function(v,i){var p=pt(i,v);return p[0].toFixed(1)+','+p[1].toFixed(1)}).join(' ')};
    var s='<svg viewBox="0 0 250 224" role="img" aria-label="Skill map. Fractions 45, ratios 58, decimals 78, algebra 72, geometry 66. Three weeks ago: 40, 38, 74, 60, 64." style="display:block;width:100%;height:auto">';
    [33,66,100].forEach(function(r){s+='<polygon class="rg" points="'+poly([r,r,r,r,r])+'"/>'});
    for(var i=0;i<5;i++){var p=pt(i,100);s+='<line class="rg" x1="'+cx+'" y1="'+cy+'" x2="'+p[0].toFixed(1)+'" y2="'+p[1].toFixed(1)+'"/>'}
    s+='<polygon class="was" points="'+poly(was)+'"/><polygon class="now" points="'+poly(now)+'"/>';
    for(var k=0;k<5;k++){var lx=cx+(R+14)*Math.cos(ang(k)),ly=cy+(R+14)*Math.sin(ang(k))+3,cc=Math.cos(ang(k));s+='<text x="'+lx.toFixed(1)+'" y="'+ly.toFixed(1)+'" text-anchor="'+(Math.abs(cc)<.2?'middle':(cc>0?'start':'end'))+'">'+L[k]+'</text>'}
    document.getElementById('radar').innerHTML=s+'</svg>';
  })();

  /* ---------- tabs ---------- */
  var tabs=[].slice.call(document.querySelectorAll('#tabs .tab')),titles={institution:'RILEN for institutions',teacher:'RILEN for teachers',parent:'RILEN for parents',student:'RILEN for students'};
  function count(scr){
    scr.querySelectorAll('[data-to]').forEach(function(el){
      var to=+el.dataset.to,pre=el.dataset.pre||'',suf=el.dataset.suf||'',t0=performance.now(),dur=1000;
      if(reduce)return;
      (function step(n){var p=Math.min(1,(n-t0)/dur),v=Math.round(to*(1-Math.pow(1-p,3)));el.textContent=pre+(el.dataset.fmt==='in'?v.toLocaleString('en-IN'):v)+suf;if(p<1)requestAnimationFrame(step)})(t0);
    });
  }
  function show(role,focus){
    tabs.forEach(function(t){
      var on=t.dataset.role===role;t.setAttribute('aria-selected',on?'true':'false');t.tabIndex=on?0:-1;if(on&&focus)t.focus();
      var scr=document.getElementById('scr-'+t.dataset.role);scr.hidden=!on;
      if(on){var sc=scr.querySelector('.scroll');sc.scrollTop=0;count(scr);setTimeout(function(){scr.querySelectorAll('.sec').forEach(function(s,i){if(i===0)s.classList.add('seen')})},60)}
    });
    document.getElementById('winrole').textContent=titles[role];
  }
  tabs.forEach(function(t,i){
    t.addEventListener('click',function(){show(t.dataset.role,false)});
    t.addEventListener('keydown',function(e){var n=null;if(e.key==='ArrowRight')n=(i+1)%tabs.length;else if(e.key==='ArrowLeft')n=(i-1+tabs.length)%tabs.length;if(n!==null){e.preventDefault();show(tabs[n].dataset.role,true)}});
    t.tabIndex=i===0?0:-1;
  });

  /* ---------- per-screen: needs, nav, scrollspy, reveal ---------- */
  function scrollToEl(sc,el){
    if(getComputedStyle(sc).overflowY==='visible'){el.scrollIntoView({behavior:reduce?'auto':'smooth',block:'start'});return}
    sc.scrollTo({top:el.getBoundingClientRect().top-sc.getBoundingClientRect().top+sc.scrollTop-12,behavior:reduce?'auto':'smooth'});
  }
  function refresh(scr){
    var items=[].slice.call(scr.querySelectorAll('[data-need]')),n=items.filter(function(e){return !e.classList.contains('is-done')}).length;
    scr.querySelectorAll('[data-needs]').forEach(function(e){e.textContent=n});
    var line=scr.querySelector('[data-needs-line]');if(line)line.textContent=n===0?'Nothing needs you right now.':(n===1?'1 thing needs you.':n+' things need you.');
    var box=scr.querySelector('[data-needs-strip]');
    if(box){
      box.innerHTML='<span class="eb">Needs you</span>';
      items.forEach(function(el){var b=document.createElement('button');b.className='nchip'+(el.classList.contains('is-done')?' done':'');b.textContent=el.dataset.label;b.addEventListener('click',function(){scrollToEl(scr.querySelector('.scroll'),el)});box.appendChild(b)});
    }
  }
  document.querySelectorAll('.screen').forEach(function(scr){
    refresh(scr);
    var sc=scr.querySelector('.scroll'),navs=[].slice.call(scr.querySelectorAll('.nav-i')),secs=[].slice.call(scr.querySelectorAll('.sec'));
    navs.forEach(function(n){n.addEventListener('click',function(){scrollToEl(sc,scr.querySelector('#'+n.dataset.nav))})});
    var tick=false;
    sc.addEventListener('scroll',function(){if(tick)return;tick=true;requestAnimationFrame(function(){
      var top=sc.getBoundingClientRect().top,cur=secs[0];secs.forEach(function(s){if(s.getBoundingClientRect().top-top<110)cur=s});
      navs.forEach(function(n){n.setAttribute('aria-current',n.dataset.nav===cur.id?'true':'false')});tick=false})});
    scr.querySelectorAll('.grid').forEach(function(g){[].slice.call(g.children).forEach(function(p,i){if(p.classList.contains('pnl')){p.classList.add('anim');p.style.setProperty('--i',i)}})});
    if(hasIO&&!reduce){
      var io=new IntersectionObserver(function(es){es.forEach(function(e){if(e.isIntersecting){e.target.classList.add('seen');io.unobserve(e.target)}})},{root:sc,threshold:.08});
      secs.forEach(function(s){io.observe(s)});
    }
  });

  /* ---------- clicks ---------- */
  document.addEventListener('click',function(e){
    var go=e.target.closest('[data-go]');
    if(go){
      var item=go.closest('[data-resolvable]'),scr=go.closest('.screen');
      item.classList.add('is-done');
      var msg=item.querySelector('.q-msg');if(msg)msg.textContent=go.dataset.msg||'Done.';
      var mk=item.querySelector(':scope > .mk');if(mk){mk.className='mk mk-done';mk.innerHTML=CHECK}
      if(go.dataset.wf){
        var upd=JSON.parse(go.dataset.wf);
        Object.keys(upd).forEach(function(k){var st=scr.querySelector('.wf-s[data-step="'+k+'"]');if(!st)return;var v=upd[k];if(v[0])st.querySelector('.wf-n').textContent=v[0];if(v[1])st.querySelector('.wf-l').textContent=v[1];st.classList.remove('now','done');if(v[2])st.classList.add(v[2])});
      }
      refresh(scr);return;
    }
    var why=e.target.closest('[data-why]');
    if(why){var tr=why.closest('.q-item,.pnl').querySelector('.trace'),open=tr.hidden;tr.hidden=!open;why.setAttribute('aria-expanded',open?'true':'false');why.textContent=open?why.dataset.open:why.dataset.closed;return}
    var chip=e.target.closest('.ask .chip');
    if(chip){
      var ask=chip.closest('.ask'),q=ask.querySelector('.ask-q'),a=ask.querySelector('.ask-ans');
      q.textContent=chip.dataset.q;q.classList.add('has');a.textContent=chip.dataset.a;
      var sp=document.createElement('span');sp.className='src';sp.textContent=chip.dataset.src||'';a.appendChild(sp);
      a.hidden=false;a.classList.remove('pop');void a.offsetWidth;a.classList.add('pop');return;
    }
    if(e.target.closest('[data-ask-plan]')){var pa=document.querySelector('#scr-parent .ask-chips .chip:nth-child(3)');if(pa)pa.click();return}
    if(e.target.closest('[data-ask-slot]')){var b2=e.target.closest('[data-ask-slot]');b2.textContent='Ms. Rao will offer 3 other slots';b2.disabled=true;return}
    var sw=e.target.closest('[data-switch]');if(sw){sw.setAttribute('aria-checked',sw.getAttribute('aria-checked')==='true'?'false':'true');return}
    var dl=e.target.closest('[data-dl]');
    if(dl){dl.textContent='Preparing…';dl.disabled=true;setTimeout(function(){dl.textContent='Downloaded ✓';dl.disabled=false},reduce?0:900);return}
    var task=e.target.closest('.task');
    if(task){task.setAttribute('aria-checked',task.getAttribute('aria-checked')==='true'?'false':'true');document.querySelector('[data-tasks]').textContent=document.querySelectorAll('.task[aria-checked="true"]').length;return}
    var opt=e.target.closest('.opt');
    if(opt){var ok=opt.dataset.ok==='1';document.querySelectorAll('.opt').forEach(function(o){o.classList.remove('ok','no')});opt.classList.add(ok?'ok':'no');
      document.getElementById('fb').textContent=ok?'Yes. Both amounts scale by 3, so 3 cups becomes 9. RILEN will show you fewer adding mistakes from now on.':'Not quite. Adding the same number to both sides changes the ratio. Try multiplying instead.';return}
    var hb=e.target.closest('#hintbtn');
    if(hb){var h=document.getElementById('hint'),o=h.hidden;h.hidden=!o;hb.setAttribute('aria-expanded',o?'true':'false');hb.textContent=o?'Hide hint':'Show a hint'}
  });

  /* ---------- page reveal ---------- */
  if(hasIO&&!reduce){
    var els=[].slice.call(document.querySelectorAll('.section-head,.person,.step,.rule,.road-item,.swap-row,.closing-copy,.show-head,.win'));
    var pio=new IntersectionObserver(function(es){es.forEach(function(e){if(e.isIntersecting){e.target.classList.add('in');pio.unobserve(e.target)}})},{threshold:.1});
    els.forEach(function(el){var sibs=[].slice.call(el.parentElement.children).filter(function(c){return c.classList.contains('reveal')||els.indexOf(c)>-1});el.style.transitionDelay=((sibs.indexOf(el)%4)*90)+'ms';el.classList.add('reveal');pio.observe(el)});
  }
  count(document.getElementById('scr-institution'));
  document.querySelector('#scr-institution .sec').classList.add('seen');
})();
