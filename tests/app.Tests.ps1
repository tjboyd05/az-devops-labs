Describe 'app.ps1' {
  It 'prints hello' {
    & pwsh -File ./src/app.ps1 | Should -Match 'Hello DevOps'
  }
}
