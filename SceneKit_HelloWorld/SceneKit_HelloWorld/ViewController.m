//
//  ViewController.m
//  SceneKit_HelloWorld
//
//  Created by wangweidong on 2017/9/1.
//  Copyright © 2017年 Dong. All rights reserved.
//

#import "ViewController.h"
#import <SceneKit/SceneKit.h>

//hello world

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SCNView *scnView = [[SCNView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    scnView.backgroundColor = [UIColor lightGrayColor];
    scnView.scene = [[SCNScene alloc]init];
    [self.view addSubview:scnView];
    
    SCNNode *node = [[SCNNode alloc]init];
    [scnView.scene.rootNode addChildNode:node];
    
    SCNBox *box = [[SCNBox alloc]init];
    box.firstMaterial.diffuse.contents = [UIImage imageNamed:@"SceneKit.png"];
    
    node.geometry = box;
    
    scnView.allowsCameraControl = YES;
}





@end
