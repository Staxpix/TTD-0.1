//
//  FAQ.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 14.05.21.
//

import SwiftUI


struct FAQ: View {
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        ScrollView {
            
            
            
            VStack(spacing: 40) {
                
                Image("ttd-schriftzug")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: screenSize.width * 0.5, maxHeight: screenSize.height * 0.1)
                    .padding(.horizontal, 28)
                    .background(
                        Color.ttdWhite
                    )
                    .cornerRadius(25)
                    .background(Color.ttdWhite)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                    .padding(22)
                
               
                
                Group {
                    FAQDisGroupView(textLabel: "Anmeldung", textContent: "Die Anmeldung beim TTD erfolgt per Mail. Den Antrag, und die Satzung findet Ihr auf unserer HP unter „Werde Mitglied!“ ", linkFAQText: "Werde Mitglied!", linkFAQ: "http://triathlon-team-duesseldorf.com/5101-2/")
                    
                    
                    
                    FAQDisGroupView(textLabel: "Beitrag", textContent: "Unser regulärer Jahresbeitrag beläuft sich auf 190 Euro, die Aufnahmegebühr beträgt einmalig 50 Euro. Hier sind alle Trainings und auch der Eintritt in das Rheinbad bei den Schwimmtrainings enthalten. Bei Eintritt in den Verein im laufenden Kalenderjahr, reduziert sich der Beitrag abhängig vom aktuellen Quartal (angebrochene und verbleibende sind zu zahlen). Weitere Details der Gebührenordnung findet Ihr auf unserer HP unter „Werde Mitglied!“. ", linkFAQText: "Werde Mitglied!", linkFAQ: "http://triathlon-team-duesseldorf.com/5101-2/")
                    
                    
                    
                    FAQDisGroupView(textLabel: "Corona", textContent: "Auch in Zeiten der Corona-Pandemie, haben wir unseren Trainingsbetrieb wieder aufgenommen. Unter Einhaltung aller gültigen Richtlinien und Hygienekonzepte bieten wir Trainings in allen Disziplinen an. Kleinere, festgelegte Trainingsgruppen, Hygienemaßnahmen, Mindestabstand und ein lückenlose Nachverfolgung der Trainingsteilnehmer, bilden hierfür eine gute Basis. Leider können wir wegen der aktuellen Auflagen Probetrainings nur beim Laufen anbieten. Allen Fragen zu unseren Konzepten beantworten wir Euch gerne auf Anfrage.", linkFAQText: "", linkFAQ: "")
                    
                    
                    FAQDisGroupView(textLabel: "DTU Startpass", textContent: "Der DTU Startpass ist nicht im Mitgliedsbeitrag enthalten, wird aber über den Verein bei Bedarf bestellt.", linkFAQText: "", linkFAQ: "")
                    
                    FAQDisGroupView(textLabel: "Größe", textContent: "Aktuell haben wir ca. 280 aktive Mitglieder. Tendenz steigend.", linkFAQText: "", linkFAQ: "")
                    
                    FAQDisGroupView(textLabel: "Informationen", textContent: "Alle wichtigen Informationen für die Öffentlichkeit teilen wir auf unserer Homepage, Facebook, Instragram, unserer IOS-App und Strava. Mitglieder erhalten zusätzliche Kommunikationen per Mail & WhatsApp.", linkFAQText: "", linkFAQ: "")
                    
                    FAQDisGroupView(textLabel: "Jugend", textContent: "Unsere Kinder- & Jugendarbeit ist uns sehr wichtig, weshalb wir mit großer Begeisterung entsprechend Trainingsangebote bereitstellen und uns dem Ehrencodex des Landessportbundes NRW verpflichten. Darüber hinaus setzen wir nur lizensierte und speziell ausgebildete Trainer ein. Mindestvorrausetzung für die Trainingsteilnahme am (Schwimm-)Kindertraining ist das “Gold” Abzeichen, oder 200m Kraul + 25m Kraul in unter 30 Sekunden und ein Alter von 10 Jahren. Kinder bis einschließlich zum 14. Lebensjahr sind vom Mitgliedsbeitrag befreit.", linkFAQText: "", linkFAQ: "")
                    
                    FAQDisGroupView(textLabel: "Leistungsniveaus", textContent: "Bei uns werden alle Leistungsniveaus abgedeckt, vom absoluten Einsteiger und Breitensportler, über ambitionierte Altersklassenathleten, Ligastarter und sogar Triathlon-Profis findet jeder einen Platz in unseren Reihen.", linkFAQText: "", linkFAQ: "")
                }
                
                
                
                FAQDisGroupView(textLabel: "Mannschaften", textContent: "Aktuell unterhalten wir 2 Damen und 3 Herren Teams.", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Navigation", textContent: "Unsere Trainings-Locations erhaltet ihr hier direkt in der App als praktische Map.", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Probetraining", textContent: "Ein Probetraining ist jederzeit kostenlos und unverbindlich möglich. Bei Fragen hierzu schreibt uns gerne ein Mail. Übrigens sind alle Nichtmitglieder bei Probetrainings auf dem Trainingsgelände über uns als Verein versichert.", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Schwimmen", textContent: "Unser Schwimmstützpunkt ist das Rheinbad an der Messe. Mitglieder kommen darüber hinaus auch in den Genuss eines Frühschwimmertarifs in den Bädern, Lörick (Freibad), Flingern (Allwetterbad) & dem Rheinbad. ", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Trainings", textContent: "Unsere Trainings orientieren sich an Leistungsniveaus, aber grundsätzlich wird niemand ausgeschlossen. Die Teilnahme an Trainings ist freiwillig. Alles kann, nichts muss!", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Vereinsbekleidung", textContent: "Damit erkennbar ist, zu welchem Verein man gehört, besteht die Möglichkeit, entsprechende Vereinsbekleidung käuflich zu erwerben. Dies bieten wir unseren Mitgliedern regelmäßig in sog. Bestellrunden an. Unsere Vereinsbekleidung enthält Bekleidung der Marken bioracer und skinfit. Fragen und Anregungen können jederzeit an das Bekleidungsteam gesendet werden.", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Vision", textContent: "Perspektivisch wollen wir zu den top 10 Triathlon Vereinen in Deutschland gehören und in allen Bereichen stark aufgestellt sein. Ziel ist es Athleten auf Bundesliga-Niveau zu etablieren", linkFAQText: "", linkFAQ: "")
                
                FAQDisGroupView(textLabel: "Wettkämpfe", textContent: "Aktuell haben wir noch kein eigenes Event, bezeichnen den T3 Triathlon in Düsseldorf aber gerne als unser Heimrennen. Für die Ligastarter werden die Kosten der Ligastarts übernommen. Im Wettkampfsommer finden sich häufig diverse Mitglieder zusammen, um gemeinsam an unterschiedlichsten Wettkampfformaten teilzunehmen.", linkFAQText: "", linkFAQ: "")
                
                
                
            }
        }
        
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
