# 🖥️ Fortran per il Calcolo Scientifico (HPC) - Corso CINECA 2025

Questa repository contiene i miei appunti personali, gli esercizi svolti e i progetti sviluppati durante il corso **"Introduction to Fortran for Scientific Computing"** tenuto da CINECA (Bologna, 11-14 Novembre 2025), per il quale sono stato selezionato.

## 🔗 Link Utili

* 📅 [**Pagina Ufficiale del Corso (Evento)**](https://eventi.cineca.it/en/hpc/introduction-fortran-scientific-computing/bologna-20251111): Descrizione, agenda e obiettivi formativi
* 📚 [**Repository UFFICIALE del Corso (Materiali)**](https://gitlab.hpc.cineca.it/training/intro-fortran-bologna): Repository GitLab di CINECA con slide, testi degli esercizi e materiale didattico ufficiale

## 🎯 Obiettivo e Relazione con la Repository Ufficiale

La **repository ufficiale di CINECA** (linkata sopra) contiene il materiale didattico, le slide e i testi degli esercizi forniti dai docenti.

**Questa repository**, invece, è il mio *diario di bordo* personale e *spazio di lavoro*. Qui condivido:

* ✅ Le **mie soluzioni** personali agli esercizi proposti
* 🧪 **Script di prova** e codice di test scritto durante lo studio
* 📝 **Appunti personali** e approfondimenti sui vari moduli
* 🚀 Eventuali **progetti finali** o riepilogativi

**L'obiettivo** è tracciare i miei progressi nell'apprendimento di Fortran per il calcolo scientifico HPC e creare un portfolio personale del lavoro svolto durante il corso.

## 🗂️ Struttura della Repository

La repository è organizzata per moduli, seguendo la struttura del corso ufficiale:
```
.
├── 01_Introduction/        # Appunti sulla storia e fondamenti di Fortran
├── 02_Language_Basics/     # Esercizi su tipi di dati, variabili, I/O
├── 03_Control_Flow/        # Esercizi su IF, DO, SELECT CASE
├── 04_Arrays/              # Soluzioni per esercizi sugli array
├── 05_Procedures/          # Esercizi su Subroutine e Function
├── 06_Modules/             # Codice su Modules e organizzazione del codice
├── 07_Advanced_Data/       # Esercizi su Derived Types e Allocatables
├── 08_Modern_Fortran/      # Test su Pointers, OO e Coarrays
├── Progetti/               # Progetti riepilogativi e applicazioni complete
├── Appunti/                # Appunti teorici e guide di riferimento
└── README.md               # Questo file
```

Ogni cartella contiene:
- 📄 File sorgente Fortran (`.f90`, `.f95`)
- 📋 File di documentazione specifici per il modulo
- 🔧 Makefile o script di compilazione quando necessario

## 📚 Topics Principali Trattati

Come da programma ufficiale del corso, questa repository include codice e appunti relativi a:

### Modulo 1: Fondamenti
* **Evoluzione del Linguaggio**: Dal Fortran 77 al Fortran 2018
* **Storia e Filosofia**: Perché Fortran è ancora rilevante nell'HPC moderno
* **Setup dell'Ambiente**: Compilatori, editor e workflow di sviluppo

### Modulo 2: Language Basics
* **Tipi di Dati**: `INTEGER`, `REAL`, `COMPLEX`, `CHARACTER`, `LOGICAL`
* **Precisione Numerica**: `KIND`, `SELECTED_INT_KIND`, `SELECTED_REAL_KIND`
* **I/O Formattato**: `READ`, `WRITE`, formati personalizzati
* **Operatori**: Aritmetici, relazionali, logici

### Modulo 3: Control Flow
* **Strutture Condizionali**: `IF-THEN-ELSE`, `SELECT CASE`
* **Loop**: `DO`, `DO WHILE`, loop impliciti
* **Controllo del Flusso**: `EXIT`, `CYCLE`, `STOP`

### Modulo 4: Arrays (Cruciale per HPC!)
* **Dichiarazione e Indicizzazione**: Array monodimensionali e multidimensionali
* **Ordinamento per Colonna**: Differenza con C/Python e ottimizzazione
* **Operazioni Array**: Sintassi "array-oriented" e whole-array operations
* **Sezioni di Array**: Slicing e subarray
* **Array Dinamici**: `ALLOCATABLE` e gestione della memoria

### Modulo 5: Procedures
* **Function**: Funzioni che restituiscono un singolo valore
* **Subroutine**: Procedure che possono restituire zero o più valori
* **Passaggio Argomenti**: Per riferimento vs per valore
* **Intent**: `IN`, `OUT`, `INOUT` per chiarezza e sicurezza
* **Interfacce**: Dichiarazioni esplicite e INTERFACE blocks

### Modulo 6: Modules
* **Organizzazione del Codice**: Raggruppamento logico di procedure e dati
* **Namespace**: Controllo della visibilità con `PUBLIC`, `PRIVATE`
* **Compilazione Modulare**: Gestione delle dipendenze
* **USE Statement**: Importazione selettiva o totale

### Modulo 7: Advanced Data Structures
* **Derived Types**: Strutture dati personalizzate (simili a `struct` in C)
* **Type-Bound Procedures**: Metodi associati ai tipi derivati
* **Allocatable Components**: Componenti dinamici nei tipi derivati
* **Gestione Dinamica della Memoria**: Best practices per `ALLOCATE`/`DEALLOCATE`

### Modulo 8: Modern Fortran Features
* **Pointers**: Riferimenti a variabili e target association
* **Object-Oriented Programming**: Ereditarietà, polimorfismo, abstract types
* **Coarrays**: Parallelismo nativo di Fortran per sistemi distribuiti
* **Interoperabilità C**: `ISO_C_BINDING` per interfacciarsi con librerie C

## 🛠️ Ambiente di Sviluppo e Compilazione

### Compilatore di Riferimento

Il compilatore principale utilizzato è **`gfortran`** (GNU Fortran), parte della GNU Compiler Collection (GCC).

#### Installazione
```bash
# Ubuntu/Debian
sudo apt install gfortran

# macOS (con Homebrew)
brew install gcc

# Fedora/RHEL
sudo dnf install gcc-gfortran
```

#### Verifica Installazione
```bash
gfortran --version
```

### Compilazione Base

Per compilare un singolo programma (es. `programma.f90`):
```bash
gfortran -o programma programma.f90
./programma
```

### ⚙️ Compilazione Consigliata (Standard Moderno e Debugging)

Per un ambiente di sviluppo robusto con controlli di qualità:
```bash
gfortran -std=f2008 -Wall -Wextra -fcheck=all -g -o programma programma.f90
```

**Spiegazione dei flag:**
- `-std=f2008`: Forza l'aderenza allo standard Fortran 2008 (o `f2018` per lo standard più recente)
- `-Wall`: Abilita tutti i warning principali
- `-Wextra`: Abilita warning aggiuntivi non inclusi in `-Wall`
- `-fcheck=all`: Attiva controlli a runtime (array bounds, null pointers, allocazioni)
- `-g`: Include simboli di debugging per usare `gdb`

### 🚀 Compilazione Ottimizzata (Produzione/Performance)

Per codice di produzione con massime prestazioni:
```bash
gfortran -O3 -march=native -funroll-loops -o programma programma.f90
```

**Spiegazione dei flag:**
- `-O3`: Livello massimo di ottimizzazione
- `-march=native`: Ottimizza per l'architettura CPU specifica
- `-funroll-loops`: Srotola i loop per migliorare le performance

⚠️ **Nota**: Non usare `-fcheck=all` in produzione (rallenta l'esecuzione).

### 📦 Progetti Multi-File

Per progetti complessi con più file sorgente e moduli, verranno utilizzati:

#### Makefile (Esempio Base)
```makefile
FC = gfortran
FFLAGS = -std=f2008 -Wall -Wextra -fcheck=all -g

SRCS = modulo.f90 main.f90
OBJS = $(SRCS:.f90=.o)
TARGET = programma

all: $(TARGET)

$(TARGET): $(OBJS)
	$(FC) $(FFLAGS) -o $@ $^

%.o: %.f90
	$(FC) $(FFLAGS) -c $

clean:
	rm -f $(OBJS) $(TARGET) *.mod

.PHONY: all clean
```

#### CMake (per progetti più grandi)
```cmake
cmake_minimum_required(VERSION 3.10)
project(FortranProject Fortran)

set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -std=f2008 -Wall")

add_executable(programma main.f90 modulo.f90)
```

## 📖 Come Navigare questa Repository

1. **Segui l'ordine dei moduli** (da `01_Introduction` a `08_Modern_Fortran`) se sei nuovo a Fortran
2. **Consulta la cartella `Appunti/`** per guide di riferimento rapido e cheat sheet
3. **Esplora i `Progetti/`** per vedere applicazioni complete che integrano i concetti appresi
4. Ogni cartella di modulo contiene un proprio `README.md` con dettagli specifici sugli esercizi

## 🎓 Competenze Acquisite

Al termine del corso e completando gli esercizi in questa repository, avrai sviluppato competenze in:

- ✅ Programmazione efficiente in Fortran moderno (standard 2008/2018)
- ✅ Gestione ottimale degli array per calcolo scientifico e HPC
- ✅ Modularizzazione e organizzazione di codice complesso
- ✅ Uso di strutture dati avanzate e gestione dinamica della memoria
- ✅ Fondamenti di parallelismo con Coarrays
- ✅ Best practices per codice numerico ad alte prestazioni
- ✅ Debugging e ottimizzazione di programmi Fortran

## 📊 Progressione del Corso

- [x] **Giorno 1** (11 Nov): Introduction + Language Basics
- [x] **Giorno 2** (12 Nov): Control Flow + Arrays
- [x] **Giorno 3** (13 Nov): Procedures + Modules
- [x] **Giorno 4** (14 Nov): Advanced Data + Modern Fortran

## 🤝 Contributi e Feedback

Questa è una repository personale di apprendimento, ma feedback e suggerimenti sono sempre benvenuti! Se noti errori o hai consigli per migliorare le soluzioni:

- 📧 Contattami direttamente
- 🐛 Apri una issue
- 💡 Proponi una pull request

## 📚 Risorse Aggiuntive

### Documentazione Ufficiale
- [Fortran Wiki](http://fortranwiki.org/)
- [GNU Fortran Manual](https://gcc.gnu.org/onlinedocs/gfortran/)
- [Modern Fortran Tutorial](https://cyber.dabamos.de/programming/modernfortran/)

### Libri Consigliati
- *Modern Fortran Explained* - Metcalf, Reid & Cohen
- *Modern Fortran: Building Efficient Parallel Applications* - Milan Curcic
- *Introduction to Programming with Fortran* - Ian Chivers & Jane Sleightholme

### Community
- [Fortran Discourse](https://fortran-lang.discourse.group/)
- [r/fortran](https://www.reddit.com/r/fortran/)
- [Stack Overflow - Fortran Tag](https://stackoverflow.com/questions/tagged/fortran)

## 📜 Licenza

Il contenuto di questa repository è fornito "as-is" per scopi educativi. Il materiale didattico ufficiale appartiene a CINECA. Le mie soluzioni personali e gli appunti sono condivisi liberamente per la comunità.

## 🙏 Ringraziamenti

Un ringraziamento speciale a:

- **CINECA** per l'opportunità formativa e l'accesso alle risorse HPC
- I **docenti del corso** per la loro competenza ed esperienza condivisa
- La **comunità Fortran** per mantenere vivo questo linguaggio storico ma ancora fondamentale per il calcolo scientifico
- Tutti coloro che contribuiranno con feedback e suggerimenti

---

*"In Fortran, we trust - for science, for performance, for the future of HPC."*

**Autore**: [Il tuo nome]  
**Corso**: Introduction to Fortran for Scientific Computing  
**Periodo**: 11-14 Novembre 2025  
**Sede**: CINECA, Bologna