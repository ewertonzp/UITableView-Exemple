//
//  ThingsViewController.m
//  TableViewExemple
//
//  Created by Roberto  Beraldo Chaiben on 17/03/12.
//  Copyright (c) 2012 Master Coding. All rights reserved.
//

#import "ThingsViewController.h"


@implementation ThingsViewController

@synthesize thingsTableView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // aloca espaço para o array de coisas
    thingsArray = [[NSMutableArray alloc] init];
    
    // cria os objectos da classe Thing e os adicicona ao array
    Thing *abacaxi = [[Thing alloc] initWithName:@"Abacaxi" description:@"Fruta amarela"];
    [thingsArray addObject:abacaxi];
    
    Thing *anta = [[Thing alloc] initWithName:@"Anta" description:@"Um animal inteligente ou uma pessoa burra"];
    [thingsArray addObject:anta];
    
    Thing *babaca = [[Thing alloc] initWithName:@"Babaca" description:@"Usuário Windows"];
    [thingsArray addObject:babaca];
    
    Thing *bolovo = [[Thing alloc] initWithName:@"Bolovo" description:@"Bolinho de carne e ovo"];
    [thingsArray addObject:bolovo];
    
    Thing *cachorra = [[Thing alloc] initWithName:@"Cachorra" description:@"Aquela sua vizinha"];
    [thingsArray addObject:cachorra];
    
    Thing *cobol = [[Thing alloc] initWithName:@"Cobol" description:@"Linguagem em que seu avô programava"];
    [thingsArray addObject:cobol];
    
    Thing *coisa = [[Thing alloc] initWithName:@"Coisa" description:@"Tudo o que você imaginar"];
    [thingsArray addObject:coisa];
    
    Thing *debilMental = [[Thing alloc] initWithName:@"Débil Mental" description:@"Música dos Mamonas Assassinas"];
    [thingsArray addObject:debilMental];
    
    Thing *estanho = [[Thing alloc] initWithName:@"Estanho" description:@"Metal de número atômico 50"];
    [thingsArray addObject:estanho];
    
    Thing *estranho = [[Thing alloc] initWithName:@"Estranho" description:@"Você, que está lendo isto"];
    [thingsArray addObject:estranho];
    
    Thing *feliz = [[Thing alloc] initWithName:@"Feliz" description:@"Você não está se sentindo assi agora"];
    [thingsArray addObject:feliz];
    
    Thing *girafa = [[Thing alloc] initWithName:@"Girafa" description:@"Um bicho da cor do abacaxi, citado acima"];
    [thingsArray addObject:girafa];
    
    Thing *google = [[Thing alloc] initWithName:@"Google" description:@"O Todo Poderoso"];
    [thingsArray addObject:google];
    
    Thing *horror = [[Thing alloc] initWithName:@"Horror" description:@"O último programa que você desenvolveu"];
    [thingsArray addObject:horror];
    
    Thing *idiota = [[Thing alloc] initWithName:@"Idiota" description:@"Seu vizinho"];
    [thingsArray addObject:idiota];
    
    Thing *java = [[Thing alloc] initWithName:@"Java" description:@"A linguagem mais chata da Galáxia"];
    [thingsArray addObject:java];
    
    Thing *jegue = [[Thing alloc] initWithName:@"Jegue" description:@"Também chamado de jumento"];
    [thingsArray addObject:jegue];
    
    Thing *jumento = [[Thing alloc] initWithName:@"Jumento" description:@"Também chamado de jegue"];
    [thingsArray addObject:jumento];
    
    Thing *lontra = [[Thing alloc] initWithName:@"Lontra" description:@"Pteronura brasiliensis"];
    [thingsArray addObject:lontra];
    
    Thing *objectiveC = [[Thing alloc] initWithName:@"Objective-C" description:@"Sou eu!"];
    [thingsArray addObject:objectiveC];
    
    Thing *windows = [[Thing alloc] initWithName:@"Windows" description:@"O vírus mais famoso da Informática"];
    [thingsArray addObject:windows];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - UITableView Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Thing *thing = [thingsArray objectAtIndex:[indexPath row]];
    NSString *msg = [NSString stringWithFormat:@"Você selecionou: %@", [thing name]];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Seleção"
                                              message:msg
                                              delegate:nil
                                              cancelButtonTitle:@"Eu sei disso"
                                              otherButtonTitles:nil];
    [alert show];
    
    [self.thingsTableView deselectRowAtIndexPath:indexPath animated:YES];
}



#pragma mark - UITableView Data Source Methods

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [thingsArray count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"thingCell";
    
    UITableViewCell *cell = [self.thingsTableView dequeueReusableCellWithIdentifier:cellID];
    
    if ( cell == nil )
    {
        // Com StyleDefault, aparece só o título, sem a descrição
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        // Com StyleSubtitle, são mostrados título e descrição
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    Thing *thing = [thingsArray objectAtIndex:[indexPath row]];
    cell.textLabel.text = [thing name];
    cell.detailTextLabel.text = [thing description];
    
    // Adiciona imagem à célula
    //cell.imageView.image = [UIImage imageNamed:@"imagem.png"];
    
    return cell;
}


@end










