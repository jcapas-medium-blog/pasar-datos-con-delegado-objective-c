//
//  PersonasTableViewController.m
//  objc001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

#import "PersonasTableVC.h"

@interface PersonasTableVC ()

@end

@implementation PersonasTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _personas = [[NSMutableArray alloc] init];
    
    [_personas addObject:[[Persona alloc] initConNombre:@"Jordan" yEdad:24]];
    [_personas addObject:[[Persona alloc] initConNombre:@"Clever" yEdad:25]];
    [_personas addObject:[[Persona alloc] initConNombre:@"Anghy" yEdad:31]];
    

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _personas.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"celdaPersona" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [_personas[indexPath.row] getNombre];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", [_personas[indexPath.row] getEdad]];
    
    return cell;
}


-(void)guardarPersona:(Persona *)persona{
    [_personas addObject:persona];
    [self.tableView reloadData];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"nuevaPersona"]){
        
        UINavigationController *navigation = [segue destinationViewController];
        NuevaPersonaVC *vc = (NuevaPersonaVC *)[navigation topViewController];
        vc.delegate = self;
    }
}


@end
