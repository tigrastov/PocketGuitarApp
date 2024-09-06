

import SwiftUI

struct KeyDmFView: View {
    
    @ObservedObject var viewModel = KeyDmFViewModel()
    
    @State private var isShowSelectView = false
    
    var body: some View {
        VStack(spacing: 3){
            
                HStack(spacing: 70){
                    
                    Image("F(F-Dm)")
                        .onLongPressGesture (minimumDuration: 0){
                            self.viewModel.play3()
                        }
                    Image("Gm(F-Dm)")
                        .onLongPressGesture (minimumDuration: 0){
                            self.viewModel.play4()
                        }
                    
                        }
                        
                        
                        HStack(spacing: 70){
                            
                            Image("Dm(F-Dm)")
                                .onLongPressGesture (minimumDuration: 0){
                                    self.viewModel.play1()
                                }
                            Image("Am(F-Dm)")
                                .onLongPressGesture (minimumDuration: 0){
                                    self.viewModel.play5()
                                }
                            
                            
                           
                        }
                        HStack(spacing: 70){
                            
                            Image("Hb(F-Dm)")
                                .onLongPressGesture (minimumDuration: 0){
                                    self.viewModel.play6()
                                }
                            Image("C(F-Dm)")
                                .onLongPressGesture (minimumDuration: 0){
                                    self.viewModel.play7()
                                }
                          
                        }
                        HStack(spacing: 70){
                            
                            Image("A(F-Dm)")
                                .onLongPressGesture (minimumDuration: 0){
                                    self.viewModel.play2()
                                }
                            Image("G(F-Dm)")
                                .onLongPressGesture (minimumDuration: 0){
                                    self.viewModel.play8()
                                }
                         
                        }
                        
        }
        
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
            .background(Image("F - DmBg").resizable().scaledToFill().ignoresSafeArea())
           .overlay(alignment: .bottom) {
            HStack{
                Spacer()
                Text("F - Dm").foregroundStyle(Color.white).font(.largeTitle).offset(x: 30)
                Spacer()
                Button(action: {
                    isShowSelectView.toggle()
                }, label: {
                    Image("settings")
                })
                .fullScreenCover(isPresented: $isShowSelectView, content: {
                    KeySelectView()
                })
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("Dm - Color")).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
        
    }
}

#Preview {
    KeyDmFView()
}
