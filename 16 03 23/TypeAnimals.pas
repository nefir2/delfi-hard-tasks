unit TypeAnimals;
interface
  type //�� � ����� ����� ����� �� �������� ��� ����� ������� �������� ����� "type"? ���� �� ������� ���� ��� ������. ������ ������� ������� �����, � ���?????
    IDogPoroda = interface(IInterface)
        function EarLength(): string;
        function Height(): string;
        function WoolLength(): string;
        function PorodaName(): string;
    end;
    TAnimal = class(TInterfacedObject) //�� � ��� � ������ ��� �� ����� ����������?
      public //��������� ��� ��� � ����� � ������� ����� ������ �� ���������� ������. �� ������ ����� �� ������� �����?
        constructor Create(); //� ������ �� ������� ��� ��� ������ � ������ ����? ��� ���, ���� ������ � ��������?
        function GetKind: string; virtual; abstract; //� ����� �� ������ ��� ��� �������������.    //������. ��� �� �������, ������ �����������.
        function Voice: string; virtual; abstract;
      private Kind: String;
    end; //� ������� ����� ����� � ��� ��������� ���. ���� �� �� ����� � �� � ������ ����� ������� �� ������� ��� �� ���. ������� ������������ ������� ������ �� ���������. � ������� ���� ���� ����, �� �����-�� ���������� ������� ��� ������ ����� ���� ��� ���������.
    TDog = class(TAnimal)
      public
        constructor Create();
        function Voice: string; override;
        function Eat: string; virtual; //������ �� �����������?
    end;
    TCat = class(TAnimal)
      public
        constructor Create();
        function Voice: string; override;
        function Eat: string; virtual; //������ ��� ��� �����������?
    end;
    TOvcharka = class(TDog, IDogPoroda)
      public
        constructor Create();
        function PorodaName(): string;
        function EarLength(): string;
        function Height(): string;
        function WoolLength(): string;
    end;
    TTaxa = class(TDog, IDogPoroda)
      public
        constructor Create();
        function PorodaName(): string;
        function EarLength(): string;
        function Height(): string;
        function WoolLength(): string;
    end;
implementation
  //����� �������
  constructor TAnimal.Create(); begin Kind := 'AN ANIMAL'; end; //����������� �� ����� ���� ��� �� �������������.
  constructor TDog.Create(); begin Kind := 'A DOG'; end; //������. �����. �����. ��. �������.
  constructor TCat.Create(); begin Kind := 'A CAT'; end; //� ������� ���� ���� ������ ��� ����� ��� � ������ ����� ������?
  function TDog.Voice(): string; begin Voice := 'BARK'; end; //�� � � ���� ����� ����� ������� ��������, ��� ����� ��������� ����� �������?
  function TCat.voice(): string; begin Voice := 'MEOW'; end;
  function TDog.Eat(): string; begin EAT := 'MEAT' end;
  function TCat.Eat(): string; begin EAT := 'FISH' end;

  //������� �1
  ////������ ������
  constructor TOvcharka.Create(); begin Kind := 'A DOG. PORODA: OVCHARKA'; end;
  function TOvcharka.Height(): string; begin Height := '70 CM'; end;
  function TOvcharka.EarLength(): string; begin EarLength := '10 CM'; end;
  function TOvcharka.WoolLength(): string; begin WoolLength := '7 CM'; end;
  function TOvcharka.PorodaName(): string; begin porodaname := 'OVCHARKA'; end;
  //������ ������
  constructor TTaxa.Create(); begin Kind := 'A DOG. PORODA: TAXA'; end;
  function TTaxa.WoolLength(): string; begin woollength := '2 CM'; end;
  function TTaxa.Height(): string; begin height := '20 CM'; end;
  function TTaxa.EarLength(): string; begin earlength := '12 CM'; end; //����� ��� ������� ��������. ������� ����������.
  function TTaxa.PorodaName(): string; begin porodaname := 'TAXA'; end;
end.
