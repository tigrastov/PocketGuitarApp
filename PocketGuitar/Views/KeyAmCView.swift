

import SwiftUI

struct KeyAmCView: View {
    
    @ObservedObject var viewModel = KeyAmCViewModel()
    @State private var isShowSelectView = false
    @State private var opaciti = 1.0
    
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("C").animation(.easeIn)
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play1()
                    }
                               
                Image("Dm").opacity(opaciti)
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play2()
                     
                        withAnimation(.bouncy(duration: 0.5)) {
                            
                           
                        }
                    }.animation(.bouncy, value: opaciti)
                    }
                    
                    
                    HStack(spacing: 70){
                        
                        Image("Am")
                            .onLongPressGesture(minimumDuration: 0) {
                                self.viewModel.play6()
                            }
                        Image("Em")
                            .onLongPressGesture(minimumDuration: 0) {
                                self.viewModel.play3()
                            }
                        
                    }
                    HStack(spacing: 70){
                       
                        Image("F")
                            .onLongPressGesture(minimumDuration: 0) {
                                self.viewModel.play4()
                            }
                        Image("G")
                            .onLongPressGesture(minimumDuration: 0) {
                                self.viewModel.play5()
                            }
                       
                    }
                    HStack(spacing: 70){
                        
                        Image("E")
                            .onLongPressGesture(minimumDuration: 0) {
                                self.viewModel.play7()
                            }
                        Image("D")
                            .onLongPressGesture(minimumDuration: 0) {
                                self.viewModel.play8()
                            }
                        
                        
                    }
                    
                    
                
                
            
        }
        
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
            .background(Image("C - AmBg").resizable().scaledToFill().ignoresSafeArea())
           .overlay(alignment: .bottom) {
            HStack{
                Spacer()
                Text("C - Am").foregroundStyle(Color.white).font(.largeTitle).offset(x: 30)
                Spacer()
                Button(action: {
                    isShowSelectView.toggle()
                }, label: {
                    Image("settings")
                })
                .fullScreenCover(isPresented: $isShowSelectView, content: {
                    KeySelectView()
                })
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("tabC-Am")).shadow(radius: 5).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
          
    }
}

#Preview {
    KeyAmCView()
}
