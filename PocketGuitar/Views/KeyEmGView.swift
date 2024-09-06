

import SwiftUI

struct KeyEmGView: View {
    
    @ObservedObject var viewModel = KeyEmGViewModel()
    
    @State private var isShowSelectView = false
    
    var body: some View {
        VStack(spacing: 3){
            
                
                HStack(spacing: 70){
                    
                    Image("G(G-Em)")
                        .onLongPressGesture(minimumDuration: 0) {
                            self.viewModel.play1()
                        }
                    
                    Image("Am(G-Em)")
                        .onLongPressGesture(minimumDuration: 0) {
                            self.viewModel.play2()
                        }
                    
                    
               
                        }
                        
                        
                        HStack(spacing: 70){
                            
                            Image("Em(G-Em)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play6()
                                }
                            
                            Image("D(G-Em)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play5()
                                }
                            
                           
                        }
                        HStack(spacing: 70){
                            
                            Image("Hm(G-Em)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play3()
                                }
                            Image("C(G-Em)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play4()
                                }
                            
                           
                           
                        }
                        HStack(spacing: 70){
                            
                            Image("H(G-Em)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play7()
                                }
                            Image("A(G-Em)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play8()
                                }
                            
                            
                        }
                        
                      
               }
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
            .background(Image("G - EmBg").resizable().scaledToFill().ignoresSafeArea())
           .overlay(alignment: .bottom) {
            HStack{
                Spacer()
                Text("G - Em").foregroundStyle(Color.white).font(.largeTitle).offset(x: 30)
                Spacer()
                Button(action: {
                    isShowSelectView.toggle()
                }, label: {
                    Image("settings")
                })
                .fullScreenCover(isPresented: $isShowSelectView, content: {
                    KeySelectView()
                })
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("Em-G-Color")).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }

        }
    }


#Preview {
    KeyEmGView()
}
