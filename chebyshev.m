
w = 2*pi*150000;
s = tf('s');  
Q1 = 12.78;
Q2 = 3.46;
Q3 = 1.04;
w1 = 920946;
w2 = 680817;
w3 = 280860;

W = 2*pi*300000;
W1 = 1884956;
W2 = 1361633;
W3 = 561717;

G_L_150 = w^6/(0.9976*2^5*(s^2 + w1*s/Q1 + w1^2)*(s^2 + w2*s/Q2 + w2^2)*(s^2 + w3*s/Q3 + w3^2)); 
G_L_300 = W^6/(0.9976*2^5*(s^2 + W1*s/Q1 + W1^2)*(s^2 + W2*s/Q2 + W2^2)*(s^2 + W3*s/Q3 + W3^2)); 

G_B_150 = (w1*w2*w3/(Q1*Q2*Q3))*s^3/((s^2 + (w1/Q1)*s + w1^2)*(s^2 + (w2/Q2)*s + w2^2)*(s^2 + (w3/Q3)*s + w3^2));
bode(G_B_150)