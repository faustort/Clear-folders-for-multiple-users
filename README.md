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

     Replace `<ProfilePath>` with the path to the user profile. If not provided, the script uses the current user's profile.

3. **Review Output:**

   - The script will display progress as it searches for cache folders and clears them.
   - Disk space difference before and after the cleanup will be shown.

4. **Revert Execution Policy:**

   - The script temporarily adjusts the execution policy. After execution, it reverts the execution policy back to its original state.

## Notes

- Ensure you have the necessary permissions to clear cache folders.
- Test the script in a controlled environment before deploying it widely.
- In case of error " + FullyQualifiedErrorId : UnauthorizedAccess" 
- - Open an Administrator PowerShell and type:
- - - Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force


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

     Substitua `<ProfilePath>` pelo caminho do perfil do usuário. Se não for fornecido, o script usa o perfil do usuário atual.

3. **Revisar Saída:**

   - O script exibirá o progresso ao procurar por pastas de cache e limpá-las.
   - A diferença de espaço em disco antes e depois da limpeza será mostrada.

4. **Reverter a Política de Execução:**

   - O script ajusta temporariamente a política de execução. Após a execução, ela reverte a política de execução para o estado original.

## Notas

- Certifique-se de ter as permissões necessárias para limpar as pastas de cache.
- Teste o script em um ambiente controlado antes de implantá-lo amplamente.
- Em caso de erro "+ FullyQualifiedErrorId: UnauthorizedAccess"
  - Abra um PowerShell como administrador e digite:
    - `Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force`

## Licença

Este script é lançado sob a [Licença MIT](LICENSE).
