# Limpar Pastas Para Múltiplos Usuários
## Script de Limpeza de Cache

Este script PowerShell foi projetado para limpar várias pastas de cache no Windows, sendo especialmente útil para instituições educacionais, como universidades e escolas, que gerenciam ambientes Windows com perfis de usuário de domínio.

## Uso

1. **Baixar o Script:** Baixe o script `ClearFoldersForMultipleUsers.ps1` deste repositório.

2. **Executar o Script:**

   - Abra o PowerShell como administrador.
   - Execute o seguinte comando para executar o script:

     ```powershell
     .\ClearFoldersForMultipleUsers.ps1
     ```

3. **Revisar Saída:**

   - O script exibirá o progresso ao procurar por pastas de cache e limpá-las.
   - A diferença de espaço em disco antes e depois da limpeza será mostrada.

4. **Reverter a Política de Execução:**

   - O script ajusta temporariamente a política de execução. Após a execução, ela reverte a política de execução para o estado original.

## Notas

- Certifique-se de ter as permissões necessárias para limpar as pastas de cache.
- Teste o script em um ambiente controlado antes de implantá-lo amplamente.

## Troubleshooting

- **Erro: " + FullyQualifiedErrorId : UnauthorizedAccess"**
  - Se você encontrar o erro "UnauthorizedAccess", isso indica um problema de permissão. Para resolver:
    1. Abra um PowerShell como administrador.
    2. Digite o seguinte comando para ajustar temporariamente a política de execução:

     ```powershell
     Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
     ```

    3. Execute o script novamente:

     ```powershell
     .\ClearFoldersForMultipleUsers.ps1
     ```

    4. Após a execução do script, considere reverter a política de execução para o estado original:

     ```powershell
     Set-ExecutionPolicy -ExecutionPolicy <OriginalPolicy> -Scope Process -Force
     ```

     Substitua `<OriginalPolicy>` pela política de execução que você tinha antes de executar o script.

## Licença

Este script é lançado sob a [Licença MIT](LICENSE).


# Limpar Pastas Para Múltiplos Usuários
## Script de Limpeza de Cache

Este script PowerShell foi projetado para limpar várias pastas de cache no Windows, sendo especialmente útil para instituições educacionais, como universidades e escolas, que gerenciam ambientes Windows com perfis de usuário de domínio.

## Uso

1. **Baixar o Script:** Baixe o script `ClearFoldersForMultipleUsers.ps1` deste repositório.

2. **Executar o Script:**

   - Abra o PowerShell como administrador.
   - Execute o seguinte comando para executar o script:

     ```powershell
     .\ClearFoldersForMultipleUsers.ps1
     ```

3. **Revisar Saída:**

   - O script exibirá o progresso ao procurar por pastas de cache e limpá-las.
   - A diferença de espaço em disco antes e depois da limpeza será mostrada.

4. **Reverter a Política de Execução:**

   - O script ajusta temporariamente a política de execução. Após a execução, ela reverte a política de execução para o estado original.

## Notas

- Certifique-se de ter as permissões necessárias para limpar as pastas de cache.
- Teste o script em um ambiente controlado antes de implantá-lo amplamente.

## Troubleshooting

- **Erro: " + FullyQualifiedErrorId : UnauthorizedAccess"**
  - Se você encontrar o erro "UnauthorizedAccess", isso indica um problema de permissão. Para resolver:
    1. Abra um PowerShell como administrador.
    2. Digite o seguinte comando para ajustar temporariamente a política de execução:

     ```powershell
     Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
     ```

    3. Execute o script novamente:

     ```powershell
     .\ClearFoldersForMultipleUsers.ps1
     ```

    4. Após a execução do script, considere reverter a política de execução para o estado original:

     ```powershell
     Set-ExecutionPolicy -ExecutionPolicy <OriginalPolicy> -Scope Process -Force
     ```

     Substitua `<OriginalPolicy>` pela política de execução que você tinha antes de executar o script.

## Licença

Este script é lançado sob a [Licença MIT](LICENSE).
