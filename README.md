# Clear Folders For Multiple Users

## Cache Cleaner Script

This PowerShell script is designed to clear various cache folders on Windows, making it particularly useful for educational institutions such as universities and schools that manage Windows environments with domain user profiles.

## Usage

1. **Download Script:** Download the `ClearFoldersForMultipleUsers.ps1` script from this repository.

2. **Run Script:**

   - Open PowerShell as Administrator.
   - Run the following command to execute the script:

     ```powershell
     .\ClearFoldersForMultipleUsers.ps1
     ```

3. **Review Output:**

   - The script will display progress as it searches for cache folders and clears them.
   - Disk space difference before and after the cleanup will be shown.

4. **Revert Execution Policy:**

   - The script temporarily adjusts the execution policy. After execution, it reverts the execution policy back to its original state.

## Notes

- Ensure you have the necessary permissions to clear cache folders.
- Test the script in a controlled environment before deploying it widely.

## Troubleshooting

- **Error: " + FullyQualifiedErrorId : UnauthorizedAccess"**

  - If you encounter the "UnauthorizedAccess" error, it indicates a permission issue. To resolve:

    1. Open an Administrator PowerShell.
    2. Type the following command to temporarily adjust the execution policy:

    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
    ```

    3. Run the script again:

    ```powershell
    .\ClearFoldersForMultipleUsers.ps1
    ```

    4. After the script execution is complete, consider reverting the execution policy back to its original state:

    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy <OriginalPolicy> -Scope Process -Force
    ```

    Replace `<OriginalPolicy>` with the execution policy you had before running the script.

## Buy me a coffee ☕

If this script has been helpful to you, consider buying me a coffee!

[![Buy me a Coffee](https://img.shields.io/badge/Donate-Buy%20me%20a%20Coffee-orange?logo=paypal)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=UUD6YHZDT2F3U&item_name=Buy+a+Coffee&currency_code=BRL&source=url)

## License

This script is released under the [MIT License](LICENSE).

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

Se este script foi útil para você, considere um café!

[![Buy me a Coffee](https://img.shields.io/badge/Donate-Buy%20me%20a%20Coffee-orange?logo=paypal)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=UUD6YHZDT2F3U&item_name=Buy+a+Coffee&currency_code=BRL&source=url)
