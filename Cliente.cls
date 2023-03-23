public class Cliente {
    public String nome;
    public String rg;
    public String cpf;
    public String telefone;
    public String email;
    public String endereco;
    
    {
        nome = 'Digite seu nome';
        telefone = 'Digite seu contato';
        email = 'Digite seu email';
    }
    
    public Cliente(){}
    public Cliente(String nome, String cpf, String telefone){
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
    }
}