public class Veiculo {
  	public String placa;
    public String marca;
    public String tipo;
    public String modelo;
    public Integer anoFabricacao;
    public String proprietarioAtual;
    public String proprietarioAnterior;
    public Boolean novo;
    public Decimal valorCompra;
    public Decimal valorVenda;
    public Decimal bonus;
    
    // Bloco de inicialização
    {
      valorVenda = 0;
      marca = 'fiat';
      modelo = 'Digite o modelo de veículo desejado';  
    }
    // Criando construtores
    // modificador Classe(argumentos){
    //     Corpo do construtor
  // }
    public Veiculo (){}
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra, String tipo, Decimal valorVenda){
        // Referência this
        // Utiliza o objeto ativo na aplicação.
        this.valorVenda = valorVenda;
        this.tipo = tipo;        
        this.placa = placa;
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
            this.proprietarioAtual = 'A loja';
            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    
    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
    }