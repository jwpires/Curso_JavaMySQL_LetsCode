package Mains;

import classe.Vendedor;

import java.util.Scanner;

public class MainVendedor {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        String funcao = "Vendedor";

        System.out.println("Cadastro:  "+funcao);

        System.out.println("Insira o nome do "+funcao);
        String nome = entrada.nextLine();

        System.out.println("Insira o endereço do "+funcao);
        String endereco = entrada.nextLine();

        System.out.println("Insira o telefone do "+funcao);
        String telefone = entrada.nextLine();
        entrada.nextLine();

        System.out.println("Insira o código do setor do "+funcao);
        int codigoSetor = entrada.nextInt();

        System.out.println("Insira o salário base do "+funcao);
        double salarioBase = entrada.nextDouble();

        System.out.println("Insira o percentual de imposto do "+funcao);
        double imposto = entrada.nextDouble();

        System.out.println("Insira o valor de vendas mensal do "+funcao);
        double valorVendas = entrada.nextDouble();

        System.out.println("Insira o percentual de Comissão do "+funcao);
        double comissao = entrada.nextDouble();

        Vendedor vendedor = new Vendedor( nome, endereco, telefone, codigoSetor, salarioBase, imposto, valorVendas, comissao);

        System.out.println(vendedor.toString());

        System.out.printf("O Salário do %s é: R$%.2f",funcao,vendedor.calcularSalario(vendedor));
    }
}