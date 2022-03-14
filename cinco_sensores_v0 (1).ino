/**
antes de tudo: salvar o arquivo no computador;
ir nas ferramentas -> gerenciar biblioteca -> instala a dht sensor library
verifica se tem erro 
liga o arduino no computador e aperta no "monitor serial"
*/

#include "DHT.h"
#define dht_type DHT11 //define qual o tipo de sensor DHTxx que se está utilizando
/**
* Configurações iniciais sobre os sensores
* DHT11, LM35, LDR5 e TCRT5000
*/
int dht_pin = A1;//dht sensor azul
DHT dht_1 = DHT(dht_pin, dht_type); //pode-se configurar diversos sensores DHTxx
int lm35_pin = A0, leitura_lm35 = 0; //lm35 preto pequeno e parte da frente liso
float temperatura;
int ldr_pin = A2, leitura_ldr = 0;  // A2 é a porta no qual o sensor esta conectado
                                    // ldr sensor de luz- o onda maior parte de trás
                                    // duas pernas, o maior, tem resistor (menor)
int switch_pin = 7;

void setup()
{
Serial.begin(9600);
dht_1.begin();
pinMode(switch_pin, INPUT);
}
void loop()
{
/**
* Bloco do DHT11 -- azul. temp e umid
*/
float umidade = dht_1.readHumidity(); // float é uma variavel do tipo decimal
float temperatura = dht_1.readTemperature(); // o read... é uma função

if (isnan(temperatura) or isnan(umidade)) // se temp e umid não for número mostra "erro.."
{
Serial.println("Erro ao ler o DHT");
}
else // senão mostra esses valores abaixo
{
Serial.print(umidade); // umidade é o nome da nossa variavel
Serial.print(";");
Serial.print(temperatura); // temperatura é o nome da outra varivel
Serial.print(";");
}
/**
* Bloco do LM35  o pretinho de temperatura
*/
leitura_lm35 = analogRead(lm35_pin); //leitura.. nome de var; analog.. uma função;  
                                     // lm35.. definiu no início do codigo 
 
temperatura = leitura_lm35 * (5.0/1023) * 100; // conta pra definir como vai definir a var temperatura
Serial.print(temperatura);                     // vai mostrar isso
Serial.print(";");
/**
* Bloco do LDR5 -- de luz 
*/
leitura_ldr = analogRead(ldr_pin); // a mesma coisa de cima 
Serial.print(leitura_ldr);
Serial.print(";");
/**
* Bloco do TCRT5000 - sensor de bloqueio
* usa a outra parte do arduino tbm 
*/
if(digitalRead(switch_pin) == LOW){ // se função digital, o switch foi definido lá em cima
Serial.println(1);                  // mostra esses valores
}
else {                              // senão mostra esses valores abaixo
Serial.println(0);
}
delay(2000);    // a cada dois segundos
}

 
