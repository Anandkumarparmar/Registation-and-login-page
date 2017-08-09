#include<stdio.h>
#include<conio.h>
#include<graphics.h>
#include<dos.h>
char name[10],email[15],pass[6];
char tname[10],temail[15],tpass[6];
union REGS in,out;
void registration()
{
 settextstyle(DEFAULT_FONT,HORIZ_DIR,3);
 setcolor(11);
 outtextxy(150,70,"REGISTRATION");
}
void input()
{
 setcolor(11);
 gotoxy(11,10);
 printf("Enter Your name:");
 rectangle(215,140,300,160);
 gotoxy(11,13);
 printf("Enter EmailId :");
 rectangle(215,188,300,208);
 gotoxy(11,16);
 printf("Enter Password :");
 rectangle(215,236,300,256);
 gotoxy(29,10);
 gets(name);
 *tname=*name;
 flushall();
 gotoxy(29,13);
 gets(email);
 *temail=*email;
 flushall();
 gotoxy(29,16);
 gets(pass);
 *tpass=*pass;
}
void login()
{
 settextstyle(DEFAULT_FONT,HORIZ_DIR,3);
 setcolor(11);
 outtextxy(150,70,"LOGIN");
 setcolor(11);
 gotoxy(11,13);
 printf("Enter EmailId :");
 rectangle(215,188,300,208);
 gotoxy(11,16);
 printf("Enter Password :");
 rectangle(215,236,300,256);
 flushall();
 gotoxy(29,13);
 gets(email);
 flushall();
 gotoxy(29,16);
 gets(pass);
}
void button()
{
 setcolor(3);
 bar3d(200,300,270,325,4,1);
 settextstyle(DEFAULT_FONT,HORIZ_DIR,1);
 setcolor(0);
 outtextxy(205,310,"Register");
}
void lbutton()
{
 setcolor(3);
 bar3d(150,330,230,355,4,1);
 settextstyle(DEFAULT_FONT,HORIZ_DIR,1);
 setcolor(0);
 outtextxy(170,340,"LOGIN");
}
int mouseinit()
{
   in.x.ax=1;
   int86(51,&in,&out);
   return 1;
}
void mouseclick(int *xpos,int *ypos,int *click)
{
  in.x.ax=3;
  int86(51,&in,&out);
  *click=out.x.bx;
  *xpos=out.x.cx;
  *ypos=out.x.dx;
}
void Loading()
{
 int i=150,c=0;
 setfillstyle(LINE_FILL,4);
 fillellipse(300,250,70,70);
 outtextxy(280,250,"Loading");
 while(i<450)
 {
  delay(300);
  setcolor(c);
  line(200,350,i,350);
  setfillstyle(LINE_FILL,c);
  rectangle(200,350,i,360);
  i=i+20;
  c++;
 }
}
void main()
{
 int gd=DETECT,gm,x,y,clk;
 initgraph(&gd,&gm,"");
 registration();
 button();
 input();
   mouseinit();
 do
 {
  mouseclick(&x,&y,&clk);
  if(x>=200&&x<=270&&y>=300&&y<=325&&out.x.bx==1)
  {
   delay(300);
   setfillstyle(HATCH_FILL,6);
   floodfill(1,0,6);
   delay(1000);
    clearviewport();
   Loading();
   floodfill(1,0,2);
   gotoxy(27,17);
   printf("Registration Complete");
   delay(300);
   clearviewport();
   setfillstyle(SOLID_FILL,6);
   lbutton();
   login();
   do
   {
   mouseclick(&x,&y,&clk);
   if(x>=150&&x<=230&&y>=330&&y<=355&&out.x.bx==1)
   {
    if(*temail==*email&&*tpass==*pass)
    {
     floodfill(1,0,8);
     gotoxy(27,17);
     printf("Welcome ");
     puts(name);
     delay(500);
    }
    else
    {
     floodfill(1,0,4);
     gotoxy(27,17);
     printf("Wrong email Id and password");
     delay(500);
    }
   }
   }while(!kbhit());
  }
 }while(!kbhit());
 getch();
 closegraph();
}