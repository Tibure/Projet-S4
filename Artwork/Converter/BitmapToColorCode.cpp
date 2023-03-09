#include <iostream>
#include <fstream>
#include <bitset>
#include <map>
#include <sstream>
#include <string>
#include "bitmap_image.hpp"

using namespace std;

void finishFile(string filename);

int main(int argc, char **argv)
{
	string fileName = argv[1];
	fileName.resize(fileName.size() - 4);
    std::cout << "Starting conversion for "<< fileName << " !\n";
	

	map<string, string> codeCouleur;
	map<string, string>::iterator it;
	codeCouleur.insert({"010011001001111101001001", "0000"});
	codeCouleur.insert({"011000101110000101011110", "0001"});
	codeCouleur.insert({"111111110000000000000000", "0010"});
	codeCouleur.insert({"111111111010010000011011", "0011"});
	codeCouleur.insert({"111111111111111100000000", "0100"});
	codeCouleur.insert({"011111110000000011111111", "0101"});
	codeCouleur.insert({"011001101011001011111111", "0110"});
	codeCouleur.insert({"111111111111111111111111", "0111"});
	codeCouleur.insert({"011000000110000001100000", "1000"});
	codeCouleur.insert({"110000001100000011000000", "1001"});
	codeCouleur.insert({"000000000000000000000000", "1010"});
	codeCouleur.insert({"001100111111111111111111", "1011"});
	codeCouleur.insert({"100110010000000010011001", "1100"});
	codeCouleur.insert({"111111110110011011111111", "1101"});
	codeCouleur.insert({"110011000000000001100110", "1110"});
	codeCouleur.insert({"100110010100110000000000", "1111"});
	
    bitmap_image image(fileName + ".bmp");

	ofstream outputFile24;
	outputFile24.open(fileName + "24bits.txt");
	
	ofstream outputFile4;
	outputFile4.open(fileName + "4bits.txt");
	outputFile4 << "{ ";


	rgb_t couleur;
	string strCouleur;
	for (int y = 0; y < image.height(); y++) {
		for (int x = 0; x < image.width(); x++) {
			couleur = image.get_pixel(x,y);
			strCouleur = bitset<8>(couleur.red).to_string() + bitset<8>(couleur.green).to_string() + bitset<8>(couleur.blue).to_string();
			outputFile24 << strCouleur << endl;
			it = codeCouleur.find(strCouleur);
			if(it != codeCouleur.end())
				outputFile4 <<"\""<< it->second <<"\", ";
			else
				outputFile4 << "\"" << "XXXX" << "\", ";		//Vide
			
		}
		outputFile4 << endl;
	}
	
	finishFile(fileName);

	outputFile24.close();
	outputFile4.close();

	std::cout << "fini" << endl;
}

void finishFile(string filename)
{
	std::ifstream fileIn( filename + "4bits.txt" );                   // Open for reading

    std::stringstream buffer;                             // Store contents in a std::string
    buffer << fileIn.rdbuf();
    std::string contents = buffer.str();

    fileIn.close();
    contents.pop_back();						// Remove last character
	contents.pop_back();
	contents.pop_back();

    std::ofstream fileOut( filename + "4bits.txt" , std::ios::trunc); // Open for writing (while also clearing file)
fileOut << contents << " }";                                  // Output contents with removed character
    fileOut.close();
}