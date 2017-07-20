//
//  NuevaPersonaViewController.m
//  objc001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

#import "NuevaPersonaVC.h"

@interface NuevaPersonaVC ()

@end

@implementation NuevaPersonaVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)cancelar:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)guardar:(id)sender {

    if(![_txtNombre.text isEqualToString:@""] && ![_txtEdad.text isEqualToString:@""]){
    
        NSString *nombre = _txtNombre.text;
        int edad = [_txtEdad.text intValue];
        [_delegate guardarPersona:[[Persona alloc] initConNombre:nombre yEdad:edad]];
        [self dismissViewControllerAnimated:true completion:nil];
    }
    
    
}


@end
