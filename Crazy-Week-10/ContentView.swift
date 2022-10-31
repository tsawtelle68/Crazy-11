//
//  ContentView.swift
//  Crazy-Week-10
//
//  Created by Troy Sawtelle on 10/23/22.
//

import SwiftUI
import SpriteKit

class GameScene:SKScene
{
    override func sceneDidLoad()
    {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame);
        let discard1 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard2 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard3 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard4 = SKTexture(imageNamed: "Deck-Empty-Space")
        let spare1 = SKTexture(imageNamed: "Deck-Empty-Space")
        let discard1Array:Array<SKTexture> = [discard1]
        let discard2Array:Array<SKTexture> = [discard2]
        let discard3Array:Array<SKTexture> = [discard3]
        let discard4Array:Array<SKTexture> = [discard4]
        let spare1Array:Array<SKTexture> = [spare1]
        let discardPile1:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let discardPile2:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let discardPile3:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        let discardPile4:SKSpriteNode = SKSpriteNode(imageNamed: "Deck-Empty-Space");
        discardPile1.texture = discard1;
        discardPile2.texture = discard2;
        discardPile3.texture = discard3;
        discardPile4.texture = discard4;
        discardPile1.position = CGPoint(x: 30, y: 720);
        discardPile2.position = CGPoint(x: 80, y: 720);
        discardPile3.position = CGPoint(x: 130, y: 720);
        discardPile4.position = CGPoint(x: 180, y: 720);
        discardPile1.xScale = 0.06
        discardPile1.yScale = 0.06
        discardPile2.xScale = 0.06
        discardPile2.yScale = 0.06
        discardPile3.xScale = 0.06
        discardPile3.yScale = 0.06
        discardPile4.xScale = 0.06
        discardPile4.yScale = 0.06

        addChild(discardPile1);
        addChild(discardPile2);
        addChild(discardPile3);
        addChild(discardPile4);
        discardPile1.run(SKAction.repeatForever(SKAction.animate(with: discard1Array, timePerFrame: 3.0)))
        discardPile2.run(SKAction.repeatForever(SKAction.animate(with: discard2Array, timePerFrame: 3.0)))
        discardPile3.run(SKAction.repeatForever(SKAction.animate(with: discard3Array, timePerFrame: 3.0)))
        discardPile4.run(SKAction.repeatForever(SKAction.animate(with: discard4Array, timePerFrame: 3.0)))
    }
}
struct ContentView: View
{
    var scene:SKScene
    {
        let scene = GameScene();
        scene.scaleMode = .resizeFill;
        scene.backgroundColor = SKColor.purple
        return scene;
    }
    var body: some View
    {
        SpriteView(scene: scene);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
