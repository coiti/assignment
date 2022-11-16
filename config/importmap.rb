# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "@thoughtbot/trix-mentions-element", to: "https://ga.jspm.io/npm:@thoughtbot/trix-mentions-element@0.1.2/dist/index.js"
pin "@github/combobox-nav", to: "https://ga.jspm.io/npm:@github/combobox-nav@2.1.5/dist/index.js"
