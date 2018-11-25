{ Write-Host 'content' }.Ast.FindAll(
    { 
        param ( $ast ) 

        $ast -is [Management.Automation.Language.CommandAst] -and
        $ast.GetCommandName() -eq 'Write-Host' 
    },
    $true 
)