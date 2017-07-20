//
//  Persona.m
//  objc001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

#import "Persona.h"

@implementation Persona

@synthesize nombre;
@synthesize edad;


-(id) initConNombre:(NSString *)nuevoNombre yEdad:(int)nuevaEdad {
    self = [super init];
    if (self) {
        self.nombre = nuevoNombre;
        self.edad = nuevaEdad;
    }
    return self;
}

-(NSString *)getNombre{
    return nombre;
}

-(int)getEdad{
    return edad;
}


@end
