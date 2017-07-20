//
//  PersonasTableViewController.h
//  objc001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NuevaPersonaVC.h"

@interface PersonasTableVC : UITableViewController<NuevaPersonaVCDelegate>


@property(nonatomic, strong) NSMutableArray *personas;

@end
