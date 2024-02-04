import UIKit

// Subsystem classes
class ScriptWriter {
    func writeScript() {
        print("Writing the script...")
    }
}

class Director {
    func directScenes() {
        print("Directing scenes...")
    }
}

class Editor {
    func editMovie() {
        print("Editing the movie...")
    }
}

// Facade
class MovieProductionFacade {
    private let scriptWriter = ScriptWriter()
    private let director = Director()
    private let editor = Editor()
    
    func produceMovie() {
        scriptWriter.writeScript()
        director.directScenes()
        editor.editMovie()
        print("Movie production complete!")
    }
}

// Client code
let movieProduction = MovieProductionFacade()
movieProduction.produceMovie()

