/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bj;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;
/**
 *
 * @author Wataru
 */
public class BJ {

    /**1 arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Dealer Must Draw on 16 and Stand on 17");
        Dealer dealer = new Dealer(); //Dealerクラスのインスタンス化
        User user = new User(); //Userクラスのインスタンス化
        dealer.makedeck();
        ArrayList<Integer> fordealercard = dealer.deal(); //Dealerの手札を配る
        ArrayList<Integer> forusercard = dealer.deal(); //Userの手札を配る
        dealer.setCard(fordealercard);
        user.setCard(forusercard);
        int sum=dealer.open();
            while(sum<17){ //Dealerの手札の合計が17以上になるまでHitする
                dealer.setCard(dealer.hit());
                sum = dealer.open();
            }
        System.out.println("Dealerの手札のうちの1枚："+fordealercard.get(0));
        System.out.println("Userの手札："+forusercard); //dealしてmyCardにset
        System.out.println("Userの手札の合計値は"+user.open()+"です");
            //ユーザーの手持ち合計が21
            if(user.open()==21){
                System.out.println("BLACK JACK!! YOU WIN!!");
                System.out.println("Dealerの手札："+dealer.myCards);
                System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
            
            //ユーザーの手持ち合計が21未満
            }else if(user.open()<21){
                while(user.open()<21){
                System.out.println("Hitするなら1を入力し、Standなら他の数字を入力して下さい。");
                int input = new java.util.Scanner (System.in).nextInt();
                    if(input ==1){
                        user.setCard(dealer.hit());
                        user.open();
                        System.out.println("Userの手札："+user.myCards); //hitしてmyCardにset
                        System.out.println("Userの手札の合計値は"+user.open()+"です");
                    }else{
                        break;
                    }
                }
                if(user.open()<=21&&dealer.open()<=21){
                            if(user.open()>dealer.open()){
                                System.out.println("Userの手札："+user.myCards); //hitしてmyCardにset
                                System.out.println("Userの手札の合計値は"+user.open()+"です");
                                if(user.open()==21){
                                System.out.println("BLACK JACK!! YOU WIN!!");
                                }
                                else{
                                System.out.println("YOU WIN!!");
                                System.out.println("Dealerの手札："+dealer.myCards);
                                System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
                                }
                            }    
                            else if(user.open()==dealer.open()){
                                System.out.println("DRAW!!");
                                System.out.println("Dealerの手札："+dealer.myCards);
                                System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
                            }
                            else{
                                System.out.println("YOU LOSE!!");
                                System.out.println("Dealerの手札："+dealer.myCards);
                                System.out.println("Dealerの手札の合計値は"+dealer.open()+"です"); 
                            }    
                        }

                        else{ //21ならブラックジャック
                            if(user.open()<=21&&dealer.open()>21){
                                if(user.open()==21){
                                    System.out.println("BLACK JACK!! YOU WIN!!");
                                    System.out.println("Dealerの手札："+dealer.myCards);
                                    System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
                                    
                                }else{
                                System.out.println("YOU WIN!!");
                                System.out.println("Dealerの手札："+dealer.myCards);
                                System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
                                }
                            }
                            else{
                            System.out.println("BUST!! YOU LOSE!!");
                            System.out.println("Dealerの手札："+dealer.myCards);
                            System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
                            }
                        }
                
            }else{
                System.out.println("BUST!! YOU LOSE!!");
                System.out.println("Dealerの手札："+dealer.myCards);
                System.out.println("Dealerの手札の合計値は"+dealer.open()+"です");
            }   
                        }
                } //必ず外に書く

    abstract class Human{ //抽象クラス
        abstract public int open(); //抽象メソッド
        abstract public void setCard(ArrayList<Integer> setcard); //抽象メソッド
        abstract public boolean checkSum(); //抽象メソッド
        ArrayList<Integer> myCards = new ArrayList<Integer>();
    }

    class Dealer extends Human{ //抽象クラスHumanを継承
        ArrayList<Integer> cards=new ArrayList<Integer>();; //クラス内で使いたい変数はクラス直下に記述する
        //ArrayList<Integer> hands=new ArrayList<Integer>(); //手札(hands)をArrayList型で生成
        
        public void makedeck(){ //トランプカード52枚作成
        
            for(int i=1; i<=4; i++){ //下記の処理を4回繰り返す
            for(int j=2; j<=10; j++){ //2〜10のカード作成
                cards.add(j);
            }
        }
        //絵札を4枚ずつ作成
        for(int k=1; k<=4; k++){
            cards.add(1); //Ace
            cards.add(10); //Jack
            cards.add(10); //Queen
            cards.add(10); //King
        }
        } //トランプ作成完了

    //deal
    public ArrayList<Integer> deal(){
        ArrayList<Integer> hands=new ArrayList<Integer>();
        Random rand = new Random(); //乱数生成
            for (int y=0;y<2;y++) {
                int index = rand.nextInt(cards.size());
                hands.add(cards.get(index)); //indexで生成された乱数を元に2枚ドローする
                cards.remove(index); //山札から2枚除く
            }    
        return hands;
        }

    //hit
    public ArrayList<Integer> hit(){
        Random rand = new Random(); //乱数生成
                int index = rand.nextInt(cards.size());
                ArrayList<Integer> onemoreCard = new ArrayList<Integer>();
                onemoreCard.add(cards.get(index));
                cards.remove(index); //山札から1枚除く
        return onemoreCard;
    }

        public void setCard(ArrayList<Integer>setcard){ //setcard
            for(int b=0; b<setcard.size(); b++){ //１が最初に来たら11に変える
                if(setcard.get(b)==1){
                    setcard.add(b,11);
                }
            myCards.add(setcard.get(b)); //myCardsにカード情報を追加
            }
        
        }
        public boolean checkSum(){
            int sum=open();
            if(sum<=21){
                return true;
            }
            else{
                return false;
                }
            }
        
        //myCardsの合計値を計算する
        public int open(){
            int sum = 0;
                for(int a = 0; a < myCards.size(); a++){
                    sum+=((Integer)myCards.get(a)); //ArrayList<Integer>からint型にキャスト
                }
                return sum;
                }
    }

class User extends Human{
    public void setCard(ArrayList<Integer>setcard){ //setcard
            for(int c=0; c<setcard.size(); c++){
                if(setcard.get(c)==1){
                    System.out.println("Aを1にする場合1を入力、Aを11にしたい場合 11を入力してください");
                    int input = new java.util.Scanner (System.in).nextInt();
                        if(input ==11){
                            setcard.remove(c);
                            setcard.add(c,11);
                        }
                }
            myCards.add(setcard.get(c)); //myCardsにカード情報を追加
            }
    }
            
    public int open(){
            int sum = 0;
                for(int a = 0; a < myCards.size(); a++){
                    sum+=((Integer)myCards.get(a)); //ArrayList<Integer>からint型にキャスト
                }
                return sum;
                }
    public boolean checkSum(){
        int sum=open();
            if(sum<=21){
                return true;
            }
            else{
                return false;
                }
    }
}
