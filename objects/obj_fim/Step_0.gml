/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (posicao_atual <= string_length(texto)) {
    texto_atual = string_copy(texto, 1, posicao_atual);
    posicao_atual += velocidade_digitacao;
} else {
    if (!confetes_ativos) {
        // Lógica para ativar a animação de confetes
        // Por exemplo: instance_create(x, y, obj_confetes);
        confetes_ativos = true;
    }
}



