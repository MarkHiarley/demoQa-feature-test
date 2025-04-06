Feature: Envio e Download de Arquivos

Scenario: Baixar um arquivo com sucesso
Given o usuário está na página de arquivos
When ele clica no botão de download
Then o arquivo deve ser baixado automaticamente

Scenario: Tentar enviar um arquivo sem botão visível
Given o usuário está na área de envio de arquivos
When ele procura por um botão de envio
Then ele não encontra nenhum botão claro
And não sabe se o arquivo foi enviado

Scenario: Selecionar múltiplos arquivos
Given o usuário está tentando enviar dois arquivos
When ele seleciona o segundo arquivo
Then o primeiro arquivo é substituído
And não é possível manter os dois arquivos ao mesmo tempo

Scenario: Clicar fora da área e ativar envio
Given o usuário está próximo da área de seleção de arquivos
When ele clica em palavras ao redor da área
Then a função de envio é ativada indevidamente

Scenario: Selecionar arquivo sem feedback visual
Given o usuário selecionou um arquivo
When a seleção é concluída
Then nenhuma confirmação é exibida
And o usuário fica sem saber se o arquivo foi aceito

Scenario: Repetir envio em outro navegador
Given o usuário recarregou a página ou trocou de navegador
When ele tenta enviar um arquivo novamente
Then o erro de substituição continua acontecendo
