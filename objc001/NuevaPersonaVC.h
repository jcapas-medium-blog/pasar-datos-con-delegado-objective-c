//
//  NuevaPersonaViewController.h
//  objc001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Persona.h"

@protocol NuevaPersonaVCDelegate <NSObject>
    -(void)guardarPersona:(Persona *)persona;
@end

@interface NuevaPersonaVC : UIViewController

    @property (weak, nonatomic) IBOutlet UITextField *txtNombre;
    @property (weak, nonatomic) IBOutlet UITextField *txtEdad;

    @property (weak, nonatomic) id <NuevaPersonaVCDelegate> delegate;

    - (IBAction)cancelar:(id)sender;
    - (IBAction)guardar:(id)sender;

@end






















