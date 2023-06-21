function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min + 1) ) + min;
  }
  
  const numeroAleatorioEntreZeroECinco = getRndInteger(0, 5)


const parImpar = process.argv[2]
let numero = process.argv[3]
numero = Number(numero)

const resultado = (numero + numeroAleatorioEntreZeroECinco)

if (parImpar === "impar") {
    if (resultado % 2 === 0) {
        console.log(`Você escolheu impar e o computador escolheu par. O resultado foi ${resultado}. Você perdeu`)
    }else{
        console.log(`Você escolheu impar e o computador escolheu par. O resultado foi ${resultado}. Você ganhou`)
    }
}else{
    if (resultado % 2 === 0) {
        console.log(`Você escolheu par e o computador escolheu impar. O resultado foi ${resultado}. Você ganhou`)
    }else{
        console.log(`Você escolheu par e o computador escolheu impar. O resultado foi ${resultado}. Você perdeu`)
    }
}